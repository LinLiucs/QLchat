import java.io.*;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.ServerSocket;
import java.net.Socket;


public class Server implements Runnable{
    private Socket s;
    private String s1;

    public Server(Socket s,String s1){
        this.s = s;
        this.s1 = s1;
    }


    @Override
    public void run(){
        try {
            //3.获取输出流
            InputStream is = s.getInputStream();

            //解决名称冲突问题
            int count = 1;
            File file = new File("C:\\Users\\刘强\\Desktop\\"+"("+count+")"+s1);

            while (file. exists()) {
                count++;
                file = new File("C:\\Users\\刘强\\Desktop\\"+"("+count+")"+s1);

            }
            //4.文件输出
            FileOutputStream fos = new FileOutputStream(file.getAbsolutePath());
            byte[] buffer = new byte[1024];
            int len;
            while ((len=is.read(buffer))!=-1){
                fos.write(buffer,0,len);
            }
            //5.通知客户端接收完毕
            OutputStream os = s.getOutputStream();
            os.write("对方已接收".getBytes());
            os.close();
            fos.close();
            is.close();
            s.close();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

}
