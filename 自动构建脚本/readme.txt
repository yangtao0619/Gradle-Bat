15:17 2017/2/28自动构建脚本使用教程:
1.构建步骤
将base.bat和build.gradle文件以及gradle文件夹和gradlew.bat文件拷贝Code目录下面

2.在本地导入svn项目目录,找到发布版本路径,例如在我的电脑上发布版本文件夹所在的路径是:"E:\svn\iflypeccancy\Trunk\Project\07.Release\发布版本"那么对应的打开build.gradle文件,找到getNewDir()方法,在第一行def dir = new Fiel(path)中将path替换成: 	'E:\\svn\\iflypeccancy\\Trunk\\Project\\07.Release\\发布版本'  ,注意路径分割符号.由于脚本会根据当前目录的版本号自动升序创建新的版本目录，所以路径中无需带上版本目录。

3.双击base.bat文件即可.生成的apk会自动的放在发布版本目录下的10XX文件夹下面.

4.需要配置ANDROID_HOME环境变量,同时需要将该变量配置进path变量中,在其后增加platform-tools节点.(也就是将adb.exe所在目录配置进path)