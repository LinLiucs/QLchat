import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.ServerSocket;
import java.net.Socket;

public class Main {
    public static void main(String[] args){
        new serverSocket().start();

        ServerSocket ss;
        {
            while (true) {
                try {
                    DatagramSocket datagramSocket = new DatagramSocket(10000);

                    byte[]bytes = new byte[1024];

                    DatagramPacket datagramPacket = new DatagramPacket(bytes,bytes.length);

                    datagramSocket.receive(datagramPacket);

                    //上面是接受了数据  但是是一个包  我们需要把这个包解析一下 到缓冲区中才可以读出口
                    //于是我们就需要下面的这个方法  getData() 返回数据的数组 我们就可以拿到来输出到控制台了
                    byte[] data = datagramPacket.getData();
                    //这个方法是拿到实际的数据长度
                    int len1 = datagramPacket.getLength();
                    String s6 = new String(data,0,len1);
                    datagramSocket.close();


                    ss = new ServerSocket(12222);
                    Socket s = ss.accept();
                    new Thread(new Server(s,s6)).start();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }
}
