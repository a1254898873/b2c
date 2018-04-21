<?php
namespace app\admin\controller;

use think\Db;
use think\Request;
use app\index\model\Shop;
use app\index\model\Order;
use app\index\model\User;
use app\index\model\Img;
use app\index\model\Feedback;
use app\index\model\Content;

class Index extends \think\Controller
{
	
//--------------评论管理--------------------	
	
	public function showcontent(){
		
		$show = Content::where('id','>',0)->paginate(5,50);

         

       
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出
		
		return $this->fetch();
		
	}
	
	//-------------删除评论--------------
public function deletecontent(){
        

        
        //echo input('param.id');

        $id  = input('id');



        if ($id<>'') {
        
        
        // 或者直接调用静态方法
        Content::destroy($id,true);

        }
        return $this->success('删除成功^_^','showcontent');

    }	
	
	
	
//---------反馈管理----------------------	
	public function showfeedback(){
		
		$show = Feedback::where('id','>',0)->paginate(5,50);

         

       
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出
		
		return $this->fetch();
		
	}
	
//-------------删除反馈--------------
public function deletefeedback(){
        

        
        //echo input('param.id');

        $id  = input('id');



        if ($id<>'') {
        
        
        // 或者直接调用静态方法
        Feedback::destroy($id,true);

        }
        return $this->success('删除成功^_^','showfeedback');

    }	
	
//-------轮播图片增加---------------
	
	 public function addpicture(){
		$pic = input('param.pic');//图片
        $name = input('param.name');
		
		if ($pic) {
             // return $price;
            // 模型的 静态方法
                    Img::create([
					    
						'img' =>  $pic,
						'name' =>  $name,
						'type' =>  0,//0为首页轮播图片
                        
                    ]);  
		return $this->success('增加图片成功^_^','addpicture');			
                }
		return $this->fetch();
	 }
	
//---------------轮播图片管理-------------
	  public function showpicture(){
 

        
    	// DB写法
		// $show = Db::name('data')->where('id','>',0)->order('id', 'desc')->paginate(10,80);

        // dump($show);
        // 模型写法
        $show = Img::where('id','>',0)->paginate(5,50);

         

       
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出

        return $this->fetch();
		

    } 
	
//-------------删除图片-----------	
	 public function deletepicture(){
        

        
        //echo input('param.id');

        $id  = input('id');



        if ($id<>'') {
        
        
        // 或者直接调用静态方法
        Img::destroy($id,true);

        }
        return $this->success('删除成功^_^','showpicture');

    }
	 
	
//-----------------商品更新---------------------   
    public function update(){

        $id      = input('id');
        $title   = input('param.title');
        $content = input('param.content');
        $price   = input('param.price');
        $label   = input('param.label');
        $address = input('param.address');
        $sort    = input('param.sort');
        $product = input('param.product');
		$img=input('param.img');
        $lesson  = "";
        if (!$id) {
            return "商品id不能为空";
        }
         
        // 取出主键为1的数据
        $list = Shop::get($id);
        // echo $user->name;
        // dump($list);

		$file = request()->file('lesson');
          
            // 移动到框架应用根目录/public/uploads/ 目录下
            if($file){
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
                if($info){
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    //echo $info->getExtension() ."<br>";
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    //echo $info->getSaveName() ."<br>";
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    //echo $info->getFilename() ."<br>"; 
                    $lesson = $info->getSaveName();

                    // echo $lesson;
                    // exit();

                }else{
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }
			

        if ($title) {
             // return $price;
            // 模型的 静态方法
                    Shop::update([
                        'id'      =>  $id,
                        'title'   =>  $title,
                        'price'   =>  $price,
						'lesson'  =>  $lesson,
                        'content' =>  $content,
                        'label'   =>  $label,
                        'address' =>  $address,
                        'sort'    =>  $sort,
                        'product' =>  $product,
						'img' =>  $img,
                        
                    ]);  
 
        return $this->success('恭喜商品修改成功^_^','show');



        }




        $this->assign('list',$list);
        
        
        // 渲染模板输出
        return $this->fetch();


    }
	
	
//---------------------后台商品列表-------------------
	
    public function show(){
 

        
    	// DB写法
		// $show = Db::name('data')->where('id','>',0)->order('id', 'desc')->paginate(10,80);

        // dump($show);
        // 模型写法
        $show = Shop::where('id','>',0)->order('sort', 'desc')->paginate(5,50);

         

       
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出

        return $this->fetch();
		

    }
	

//-----------------文件上传-----------------------------------	
	
    public function upload(){
    // 获取表单上传文件 例如上传了001.jpg
    $file = request()->file('image');
    
    // 移动到框架应用根目录/public/uploads/ 目录下
    if($file){
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
        if($info){
            // 成功上传后 获取上传信息
            // 输出 jpg
            //echo $info->getExtension();
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getFilename(); 
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }
}

    public function header(){
 
 
        $this->assign('show', "header");
        // 渲染模板输出
        return $this->fetch();
        

    }
    public function footer(){
 
 
        // 渲染模板输出
        return $this->fetch();
        

    }
	
	
//----------------------------后台首页-----------------------
	
    public function index(){
 

    	
    	// DB写法
		// $show = Db::name('data')->where('id','>',0)->order('id', 'desc')->paginate(10,80);

        // dump($show);
        // 模型写法
        $show = Shop::where('id','>',0)->order('sort', 'desc')->paginate(5,30);
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出

        return $this->fetch();
		

    }

	
	
//---------------后台显示的商品页面------------------------

    public function view(){
        

        
        //echo input('param.id');

        $id  = input('id');

        if ($id<>'') {
        
         
        // 查询数据 - 查询商品详情内容
        $list = Db::name('shop')
        ->where('id','=', $id )
        ->select();
        // dump($list);
		
		

        // 查询数据 - 上一页
        //echo $id;
        $up = Db::name('shop')
        ->where('id','>', $id )
        ->order('id', '')
        ->limit(1)
        ->value('id');
        //dump($up);

        // 查询数据 - 下一页
        $next = Db::name('shop')
        ->where('id','<', $id )
        ->order('id', 'desc')
        ->limit(1)
        ->value('id');

        //dump($next);

        $this->assign('up',$up);
        $this->assign('next',$next);
        $this->assign('list',$list);
        

        // 渲染模板输出
        return $this->fetch();


        }
        return $this->fetch('no');
        return "商品不存在";

    }
	
	
	
    
//--------------------添加商品---------------------------
	
    public function add(){
           

        $title   = input('param.title');//商品名字
        $content = input('param.content');//商品内容
        $price   = input('param.price');//商品价格
        $label   = input('param.label');//商品标签
        $address = input('param.address');//视频地址
        $sort    = input('param.sort');//商品序号
        $product = input('param.product');//购买后显示的名字
       $img=input('param.img');//商品图片

        $lesson  = "";
        //dump($title);
           
        if ($title<>'') {
           
                 
            // 插入记录 - 去掉表前缀
             // $result = Db::name('data')
             // ->insert(['title' => $title, 'content' => $content, 'create_time' => time()]);
             //dump($result);

            


                // 获取表单上传文件 例如上传了001.jpg
            $file = request()->file('lesson');
            dump($file);
            // 移动到框架应用根目录/public/uploads/ 目录下
            if($file){
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
                if($info){
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    //echo $info->getExtension() ."<br>";
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    //echo $info->getSaveName() ."<br>";
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    //echo $info->getFilename() ."<br>"; 
                    $lesson = $info->getSaveName();

                    // echo $lesson;
                    // exit();

                }else{
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }

                    
                    // 模型的 静态方法
                    $user = Shop::create([
                        'title'   =>  $title,
                        'price'   =>  $price,
                        'lesson'  =>  $lesson,
                        'content' =>  $content,
                        'label'   =>  $label,
                        'address' =>  $address,
                        'sort'    =>  $sort,
                        'product' =>  $product,
						'img'=>$img,
                        
                    ]);  
 
        return $this->success('恭喜您发布课程成功^_^','add');

        } 
        
       return $this->fetch();
    }

	
	
//-------------------商品删除----------------------------
	
    public function delete(){
        

        
        //echo input('param.id');

        $id  = input('id');



        if ($id<>'') {
        
        
        // 或者直接调用静态方法
        Shop::destroy($id,true);

        }
        return $this->success('删除成功^_^','show');

    }
    

//----------------------增加订单------------------------

  public function addorder(){
           

        $phone   = input('param.phone');
		$orderid   = input('param.orderid');
		$price  = input('param.price');

       
           
        if ($phone<>'') {
           
                 
            

                    
                    // 模型的 静态方法
                    $order = Order::create([
                        'phone'                   =>  $phone,
                        'body'                      =>  $orderid,        
                        'total_fee'               =>  $price,
 
                    ]); 
 
        return $this->success('恭喜您增加订单成功^_^','add');

        } 
        
       return $this->fetch();
    }
	
//---------------订单展示----------------------------	
	  public function showorder(){
 

        
    	// DB写法
		// $show = Db::name('data')->where('id','>',0)->order('id', 'desc')->paginate(10,80);

        // dump($show);
        // 模型写法
        $show = Order::where('id','>',0)->paginate(5,50);

         

        
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出

        return $this->fetch();
		

    }
	
//-------------删除订单-----------------
        public function deleteorder(){
        

        
        //echo input('param.id');

        $id  = input('id');



        if ($id<>'') {
        
        
        // 或者直接调用静态方法
        Order::destroy($id,true);

        }
        return $this->success('删除成功^_^','showorder');

    }
	
//----------------会员增加---------------	

  public function adduser(){
           

        $phone   = input('param.phone');
		$rand   = input('param.rand');

       
           
        if ($phone<>'') {
           
                 
            

                    
                    // 模型的 静态方法
                    $user = User::create([
                    'phone'   =>  $phone,
					'rand'=>$rand
                ]);
 
        return $this->success('恭喜您增加会员成功^_^','adduser');

        } 
        
       return $this->fetch();
    }	
//------------------会员展示------------
public function showuser(){
 

        
    	// DB写法
		// $show = Db::name('data')->where('id','>',0)->order('id', 'desc')->paginate(10,80);

        // dump($show);
        // 模型写法
        $show = User::where('id','>',0)->paginate(5,50);

         

       
 
		// $show = $show->toArray();

        // dump($show);
        // exit();
		$this->assign('show', $show);
		// 渲染模板输出

        return $this->fetch();
		

    }
	
//-------------------删除用户----------------------
       public function deleteuser(){
        

        
        //echo input('param.id');

        $id  = input('id');



        if ($id<>'') {
        
        
        // 或者直接调用静态方法
        User::destroy($id,true);

        }
        return $this->success('删除成功^_^','showuser');

    }	
   
}

