实际项目开发中**直接写入到项目**时,往往项目的包名跟本项目的是不一样的.

注意修改生成路径, 生成路径在:

GenTableServiceImpl类中

```java
  boolean isjava = fileName.startsWith("main");
        boolean isvue = fileName.startsWith("vue");
        String userdir = System.getProperty("user.dir");
        if(isjava){
            String path = userdir +"/ruoyi-modules/ruoyi-system/src/";
            createCodeFiles(sw, fileName, path);
        } else if(isvue){
            String path = userdir +"/ruoyi-ui/src/";
            createCodeFiles(sw, fileName.replaceFirst("vue/",""), path);
        }
```



请把这里的java和前端的生成路径改成与实际项目相同的

以免造成不便

