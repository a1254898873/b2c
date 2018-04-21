<?php
namespace app\index\controller;

use think\Db;
use think\Request;
use app\index\model\Shop;
use app\index\model\User;
use app\index\model\Order;
use app\index\model\Img;
use app\index\model\Feedback;
use app\index\model\Content;
use think\Cookie; 


class Index extends \think\Controller
{
	
	
	public function personal(){
		 return $this->fetch();
	}
	
	
//----------评论---------------
	
    
	public function content(){
	   $text=input('param.content');
	   $sid=input('param.sid');
	   $phone=  Cookie::get('phone');
	   
            if ($text) {
          
                // 提交注册
                $user = Content::create([
                    'phone'   =>  $phone,
					'content'   =>  $text,
					'sid'   =>  $sid,
                ]);
           return $this->success('提交评论成功^_^');			     

            }
	   
	   
   }
	
	

//-----------------反馈-----------------
	
   public function feedback(){
	   $text=input('param.feedback');
	   $phone=  Cookie::get('phone');
	   
            if ($text) {
          
                // 提交注册
                $user = Feedback::create([
                    'phone'   =>  $phone,
					'content'   =>  $text,
                ]);
           return $this->success('提交反馈成功^_^','index');			     

            }
	   return $this->fetch();
	   
   }

   

//----------------------支付---------------------------
	public function urlreturn(){
 $paysapi_id = $_POST["paysapi_id"];
    $orderid = $_POST["orderid"];
    $price = $_POST["price"];
    $realprice = $_POST["realprice"];
    $orderuid = $_POST["orderuid"];
    $key = $_POST["key"];

    //校验传入的参数是否格式正确，略

    $token = "bc6ebaff11c82b1ba00f936f5ce06f74";
  
    $temps = md5($orderid . $orderuid . $paysapi_id . $price . $realprice . $token);
 
    if ($temps != $key){
        return jsonError("key值不匹配");
    }else{
        //校验key成功，是自己人。执行自己的业务逻辑：加余额，订单付款成功，装备购买成功等等。
		//$find_result =  	Shop::where('id','=',orderid)
         //   ->find();
		$id=str_replace($orderuid,"",$orderid);//替换字符
        $order = Order::create([
                        'phone'                   =>  $orderuid,
                        'body'                      =>  $id,        
                        'total_fee'               =>  $price,
                        
                    ]);
					
		
    } 
		
		
		
		
		
	}
	
	//返回错误
    function jsonError($message = '',$url=null) 
    {
        $return['msg'] = $message;
        $return['data'] = '';
        $return['code'] = -1;
        $return['url'] = $url;
        return json_encode($return);
    }

    //返回正确
    function jsonSuccess($message = '',$data = '',$url=null) 
    {
        $return['msg']  = $message;
        $return['data'] = $data;
        $return['code'] = 1;
        $return['url'] = $url;
        return json_encode($return);
    }
	
//---------------------------------------订单页面-------------------------------------------------------
	
	
    public function order(){


      

        $user  =  Cookie::get('phone');

        $show = Shop::where('id','>',1)
        ->order('sort', 'asc')
        ->paginate(20,false,
[
    'type'     => 'Bootstrap',
    'var_page' => 'page',
     'query' => ['user'=>$user ,'tom'=>688855],
 ]

);
         

        

        
 

    
             
             foreach($show as $k=>$v){

            // echo $show[$k]['id'] . "<br/>"; 

            $body  =  $show[$k]['id'];

            // 查询订单是否存在
            $order =  Order::where('phone','=',$user)
                    ->where('body','=',$body)
                    ->count();
      
           

            $show[$k]['buy'] = $order ? 1 : 0;

            // $show[$k]['isBuy'] = "买了吗" ? 1 : 0;
            }
            
        
        
        $this->assign('show', $show);
        $this->assign('date', date('Ymdhis'));
         
        // 渲染模板输出
        return $this->fetch();


        

    }
	
//---------------模糊搜索-------------------

    public function like()
    {
        $search   = input('search');


        $show  =  Shop::where('label|title','like','%'.$search.'%')->order('sort', 'asc')->paginate(110);

        $user  =  Cookie::get('phone');

        $rand  =  User::where('phone','=',$user)->value('rand');

        
        // $show = $show->toArray();

        // dump($show);

        if ($rand) {
            
            foreach($show as $k=>$v){

                $show[$k]['buy'] = 1;

             }

            

        } else {
             
             foreach($show as $k=>$v){

            // echo $show[$k]['id'] . "<br/>";

            $body  =  $show[$k]['id'];

            // 查询订单是否存在
            $order =  Order::where('phone','=',$user)
                    ->where('body','=',$body)
                    ->count();

            // dump($order);

            $show[$k]['buy'] = $order ? 1 : 0;

            // $show[$k]['isBuy'] = "买了吗" ? 1 : 0;
            }
            
        }
        
        
        
        $this->assign('show', $show);
        $this->assign('date', date('Ymdhis'));
        // 渲染模板输出
        return $this->fetch();


        


    }

	
	
	
//-------------------------登录--------------------	
	
    public function login()
    {
        $phone   = input('param.phone');
        $rand = input('param.rand');

        //dump($phone);
        
        
        if ($phone) {

          
            $data = [
            'phone'  => $phone
            ];
            

            $count = User::where('phone','=',$phone)->count();

            // echo $count;

            if (!$count) {
          
                // 提交注册
                $user = User::create([
                    'phone'   =>  $phone
                ]);
                

            }
            
            

          $result=db('user')->where('phone', $phone)->find();
           if($result['rand']==$rand){
		  // 设置Cookie 有效期为 3600秒
            Cookie::set('phone',$phone,3600*60*24);
			 return $this->success('登录成功^_^','index');
	  }else {
		  return $this->error('密码错误','index');
	  }

 
       
            
         }

        return $this->fetch();
    }
	

//------------------------注册---------------------

	public function register()
    {
        $phone   = input('param.phone');
        $rand = input('param.rand');

        
        
        
        if ($phone) {

          
            $data = [
            'phone'  => $phone,
			'rand'=>$rand
            ];
            

            $count = User::where('phone','=',$phone)->count();

            // echo $count;

            if (!$count) {
         
                // 提交注册
                $user = User::create([
                    'phone'   =>  $phone,
					'rand'=>$rand
                ]);
				
                 return $this->success('注册成功^_^','index');

            }else{
				 return $this->error('注册失败，该账号已注册','index');
			}
            
            

          

 
       
            
         }

        return $this->fetch();
    }

	
    public function logout(){
		       // 退出登录操作
            // 设置Cookie 有效期为 秒
            Cookie::set('phone','',1);
            // $warning ="退出成功";
            return $this->success('退出成功^_^','login'); 
	}
    public function cookie()
    {
       
        // echo  "^_^";

        // 设置Cookie 有效期为 3600秒
        // Cookie::set('phone','value123456',3600);
        
        //echo Cookie::get('phone');
        

    }

    public function session()
    {
       
        // echo  "^_^";

        Session::set('name2','tom123456');
        //echo Session::get('name2');

        
        return $this->fetch();
        

    }

  
 
//-----------------------------首页-------------------------------

    public function index(){


        // 获取当前请求的所有变量（经过过滤）
        // dump(input(''));  
        // exit();
        // echo    Session::get('name');

        

        // 设置Cookie 有效期为 3600秒
        // Cookie::set('name','tom',3600);

        // echo Cookie::get('name');

        // exit();
       
    	// DB写法
		// $show = Db::name('data')->where('id','>',0)->order('id', 'desc')->paginate(10,80);

        // dump($show);
        // 模型写法
        // $user = Cookie::get('name');
        // $user = "18210787405";
        // $show = Shop::alias('a')
        //         // ->where('a.id','>',0)
        // ->order('a.sort', 'asc')
        // ->join('__ORDER__ w','a.id = w.body','LEFT')
        // ->field('a.id,a.title,a.content,a.price,w.body,w.phone,a.sort')
        //         // ->where('w.phone','=',$user)
        // ->paginate(30);

        $user  =  Cookie::get('phone'); //获取用户账号

        $show = Shop::where('id','>',1)
        ->order('sort', 'asc')
        ->paginate(10,100);;

       $img=Img::where('id','>',1)
	   ->where('type',0)
	   ->select();
	   


        // $value->order[参数];

		// $show = $show->toArray();

         

        $rand  =  User::where('phone','=',$user)->value('rand');

        
        // $show = $show->toArray();

        // dump($show);

        if ($rand) {
            
            foreach($show as $k=>$v){

                $show[$k]['buy'] = 1;

             }

            

        } else {
             
             foreach($show as $k=>$v){

            // echo $show[$k]['id'] . "<br/>"; 

            $body  =  $show[$k]['id'];

            // 查询订单是否存在
            $order =  Order::where('phone','=',$user)
                    ->where('body','=',$body)
                    ->count();

            // dump($order);

            $show[$k]['buy'] = $order ? 1 : 0;

            // $show[$k]['isBuy'] = "买了吗" ? 1 : 0;
            }
            
        }
        
        $this->assign('show', $show);
		$this->assign('img', $img);
        $this->assign('date', date('Ymdhis'));
         
        // 渲染模板输出
        return $this->fetch();


        

    }
	
	
//-------------------商品页面-------------------------
	
    public function view(){
        

        
        //echo input('param.id');

        $id  = input('id'); //获取商品编号

        if (!$id) {

            return "id不存在";//检查商品时候存在
           }
        $user  =  Cookie::get('phone');
		$num =  Db::name('order')
		            ->where('phone','=',$user)
                    ->where('body','=',$id)
                    ->count();    //若num为0则用户没有购买该商品
		
		if($user==null){
			 return $this->error('请先登录账号','login'); 
		}
		
        /*
        $num =  Db::name('order')
		            ->where('phone','=',$user)
                    ->where('body','=',$id)
                    ->count();  
			
				
         if($num==0){
			 return $this->error('你还没有购买该商品，请先购买该商品','index'); 
		 }	*/				
        // 查询数据 - 查询商品详情内容
            $list = Shop::where('id','=', $id )
            ->find();  
			
		// 查询数据 - 查询商品评论详情内容
            $content = Content::where('sid','=', $id )
            ->paginate(3,30); 	
			
        // dump($list);
            // return $list->id;
        // echo $list['0']['create_time'];
        // die();

        // 查询数据 - 上一页
        //echo $id;
        $sort = $list['sort'];
            $up = Shop::where('sort','<', $sort )
            ->order('sort', 'desc')
            ->limit(1)
            ->field('title,id')
            ->find();
        // dump($up);

        // 查询数据 - 下一页
            $next = Shop::where('sort','>', $sort  )
            ->order('sort', 'asc')
            ->limit(1)
            ->field('title,id')
            ->find();

        //dump($next);
            $user  =  Cookie::get('phone');
            $rand  =  User::where('phone','=',$user)->value('rand');
            

            if ($rand) {

                 $order = 1;
            } else {
                # code...
               
            // 查询订单是否存在
            
            $order =  Order::where('body','=',$id)
            ->where('phone','=',$user)
            ->count();

            // dump($order);
            }
          $request = Request::instance();  
         $token="bc6ebaff11c82b1ba00f936f5ce06f74";
		 $uid="f5489d1262ced432d550b458";
   //$url_return=$_SERVER["REQUEST_SCHEME"].'://'.$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
   $url_return=$request->url(true);
		
      $url_notify=$request->domain().'/b2c/public/index/index/urlreturn';//notify_url  注意这里的地址，域名解释不同时需要注意！
		$listid= $list["id"].$user;
		$lianjie=$list["title"]. 1 . $url_notify . $listid . $user . $list["price"] . $url_return . $token . $uid;
       $key_alipay = md5($lianjie);
	   $lianjie=$list["title"]. 2 . $url_notify . $listid . $user . $list["price"] . $url_return . $token . $uid;
	   $key_wechat = md5($lianjie);
            $this->assign('up',$up);
            $this->assign('next',$next);
            $this->assign('list',$list);
            $this->assign('date', date('Ymdhis'));
            $this->assign('order', $order);
            $this->assign('num',$num);
			$this->assign('url_notify',$url_notify);
			$this->assign('url_return',$url_return);
            $this->assign('key_alipay',$key_alipay);
			$this->assign('key_wechat',$key_wechat);
			$this->assign('listid',$listid);
			$this->assign('sid',$id);
			$this->assign('content',$content);
			
			
        // 渲染模板输出
            return $this->fetch();


        

    }
	
    
    
}
