using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class Mechanical : Inherite
    {//机械学院
        private static string rootHttp = "http://mechanical.hdu.edu.cn";
        public Mechanical(int amount) : base(amount) {
            co_id = "1001";
        }

        //此函数用来连接上面两个函数，获取所需要的信息，作为主函数调用的接口
        public override bool ReadData()
        {
            string[] result = new string[no];

            //在对应类别的新闻页面http里的代码中找匹配的每条新闻的地址

            //为指定的 URI（即参数http） 方案初始化新的 WebRequest 实例,这里用强制转换因为creat可以返回多种实例，如 HttpWebRequest，FileWebRequest            
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            //获取或设置 User-agentHTTP 标头的值
            //标头是包含应用程序解压缩并显示内容时所需要的信息,受保护文件中的标头也包含获取许可证所需的信息
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            // GetResponse 方法返回包含来自 Internet 资源的响应的 WebResponse 对象
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            //Stream 类用于字节的输入和输出。 使用 StreamReader 读取标准文本文件的各行信息。
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            //从字节流中读取字符
            StreamReader streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gb2312"));
            //读取一行数据
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0, index;
            while (!streamRead.EndOfStream)
            {
                //在网页代码中查找与class='topic'匹配的第一次出现的代码的索引，返回int
                if (i == 0)
                {
                    index = outputData.IndexOf("class=\'topic\'");
                    if (index > 0)
                        found = true;
                }
                else
                    found = true;
                while (found)
                {
                    //继续往下面找标题的地址，\为转义字符，"href=\""等价于href="
                    index = outputData.IndexOf("href=");//重新设置索引的起点
                    if (index >= 0)
                    {
                        result[i] = outputData.Substring(index + 5);
                        //将取得的一行字符串切割，只取出地址,并将完整的网页地址连接起来
                        result[i] = rootHttp + '/' + result[i].Substring(0, result[i].IndexOf(" "));
                        time[i] = outputData.Substring(outputData.IndexOf("class=\'date\'>[") + 14, 10);
                        i++;
                        index = outputData.IndexOf("class=\'date\'>[") + 14 + 11;//14是"class=\'date\'>["字符串的长度，11是[]和日期的长度
                        outputData = outputData.Substring(index);//截掉已经提取了网址的字符串
                        if (i > no - 1) //控制查找的信息条数

                            break;
                    }
                    else
                        break;
                }
                if (i < no)
                    outputData = streamRead.ReadLine();//继续往下面读取
                else
                    break;
            }
            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();

            for (int j = 0; j < no; j++)
            {
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[j]);
                myHttpWebRequest.UserAgent = ".NET Framework Test Client";
                myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
                streamResponse = myHttpWebResponse.GetResponseStream();
                streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gb2312"));
                outputData = streamRead.ReadLine();

                StringBuilder sb = new StringBuilder();
                found = false;
                int begin, end;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("class=\"single_con\"") > 0)
                    {                        
                        found = true;                       
                    }
                    if (found && outputData.IndexOf("<strong><font>") >= 0)
                    {
                        begin = outputData.IndexOf("<strong><font>");
                        end = outputData.IndexOf("</font></strong>");
                        title[j] = outputData.Substring(begin + 14, end - begin - 14);
                        title[j] = title[j].Replace("&#8226;", "");
                    }
                    if (outputData.IndexOf("<dl>") >= 0)
                        found = false;
                    if (found)
                    {
                        outputData = outputData.Trim();
                        while (outputData.IndexOf("<") >= 0)
                        {
                            outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);
                        }
                        outputData = outputData.Replace("&ldquo;", "");
                        outputData = outputData.Replace("&rdquo;", "");
                        outputData = outputData.Replace("&nbsp;", "");
                        outputData = outputData.Replace("&mdash;", "");
                        sb.Append(outputData + "\n");
                    }
                    outputData = streamRead.ReadLine();
                }
                text[j] = sb.ToString();
            }
            return true;
        }
    }
}