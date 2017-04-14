## 课程实验原因，初步学习struts框架

1. 按照课件建立项目的时候，继承Action方法和ActionForm方法有问题，找不到，
   初步原因感觉是由于struts版本原因。
   结果，放弃按照课件的实验要求，转而去参考[极客学院项目](http://wiki.jikexueyuan.com/project/struts-2/examples.html)

2. 由于eclipse中环境搭建比较麻烦，所以改用**intellj**编译器进行编写
   
    推荐两个比较好的博文[手把手教你用 IntelliJ IDEA 15.x 创建并发布JavaWeb项目](http://www.voidcn.com/blog/daijin888888/article/p-4983706.html)
   
    然后配置我们的struts环境并且加上我们的最简单的登录界面的编写。
  [极客学院struts2实例](http://wiki.jikexueyuan.com/project/struts-2/examples.html)

3. intellj快捷键记录
 1. alt+insert 快速插入生成getter和setter方法或者是构造方法。

 2. 选中代码 整体向左移动或者向右移动
 
        选中代码 tab整体右移。 shift+tab是整体左移。

### 4. 问题记录


 1.  【问题描述】There is no Action mapped for namespace [/] and action name [login] associated with context path [/hellostruct]. 
      
     【原因解决措施】 路由配置有问题，个人代码是因为两个路由冲突，删掉一个就解决了，
	  也有人提出这样来解决
	    <package name="action" namespace="/" extends="struts-default">
        <action name="login"
                 class="action.LoginAction"
                 method="execute">
            <result name="success">login_success.jsp</result>
            <result name="failure">login_failure.jsp</result>
            <result name="unknown">login.jsp</result>
        </action>
    </package>
	
2.  【问题描述】struts报错严重: Dispatcher initialization failed Unable to load configuration.

     【解决措施】 http://11167760.blog.51cto.com/11157760/1745147
	 其实总结一下原因，主要就在于我们的项目建立的时候出现了问题，而且主要是jar包的问题，如果引入自己项目工程
	 如何能正确使用，都是需要注意的问题。如果觉得之前的项目已经忘记是怎么做的了话，直接去建立一个新的项目，再按照上面的
	 教程重新进行搭建项目。这样会让我们可以省下很多时间。
	 
3.  【问题描述】之前还碰到一个问题，是项目的过滤器filter有问题，找不到对应的文件。
    
    【解决措施】 手动排查，按照服务器窗口的问题给出自己项目地址的问题，然后修改路径。
	 个人解决是删掉了中间的两个字母。好像是版本问题，所以jar包的路径不是很一致，所以直接修改就好了。
	
4.  【问题描述】关于struts项目jar包的引入问题。
     
     现在晚上的教程一般在建立struts项目的时候，只要进入8个jar包就可以了。
     而我们从官网上下载的有好多好多jar包，这个时候就是说根据我们的需要去建立项目。如果说我们的项目比较简单，
	 那么直接使用我们简单版的就那8个jar包就可以了。如果项目比较大，需要的东西比较多，那就直接全部导入就好了。

5. 【问题描述】:关于文件编码问题，最近一直出现的问题就是当输入中文的时候，始终不能正常保存
   报错信息，由于某些字符的原因，不能以***格式进行存储，是否保存为utf-8格式。

    【解决措施】 放弃中文注释，逐渐的去采用英文注释
   

