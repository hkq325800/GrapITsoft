using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class Grs : Inherite
    {//研究生学院
        private static string rootHttp = "http://grs.hdu.edu.cn";
        public Grs(int amount) : base(amount) {
            co_id = "1026"; 
        }
        public override bool ReadData()
        {
            string[] result = new string[no];
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse);
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0, index;
            while (!streamRead.EndOfStream)
            {
                if (outputData.IndexOf("class=\"lanmu\"") >= 0)
                {
                    found = true;
                    outputData = streamRead.ReadLine();//跳行
                }
                if (outputData.IndexOf("</fieldset></td>") >= 0)
                {
                    found = false;
                    break;
                }
                while (found)
                {
                    index = outputData.IndexOf("href=\'");
                    if (index >= 0)
                    {
                        result[i] = outputData.Substring(index + 6);
                        result[i] = rootHttp + result[i].Substring(0, result[i].IndexOf("\'"));
                        title[i] = outputData.Substring(outputData.IndexOf("title=\'") + 7);
                        title[i] = title[i].Substring(0, title[i].IndexOf("\'>"));
                        time[i] = outputData.Substring(outputData.IndexOf("<font color=\'#696969\'>") + 22, 10);
                        while (time[i].IndexOf("<") >= 0)
                        {
                            time[i] = time[i].Remove(time[i].IndexOf("<"), time[i].IndexOf(">") - time[i].IndexOf("<") + 1);
                        }
                        i++;
                        outputData = outputData.Substring(outputData.IndexOf("<font color=\'#696969\'>") + 22);
                        if (i > no - 1)
                            break;
                    }
                    else
                        break;
                }
                outputData = streamRead.ReadLine();
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
                streamRead = new StreamReader(streamResponse);
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("class=\"gray14\"") >= 0)
                        found = true;
                    if (outputData.IndexOf("返回首页") >= 0)
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
