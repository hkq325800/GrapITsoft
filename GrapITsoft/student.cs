using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;


namespace GrapITsoft
{
    class student : Inherite
    {//学生处
        private static string rootHttp = "http://student.hdu.edu.cn/";
        public student(int amount) : base(amount) {
            co_id = "1023";
        }
        public override bool ReadData()
        {
            string[] result = new string[no];
            // Create a new 'HttpWebRequest' object to the mentioned URL.
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            // Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable.
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            // Display the contents of the page to the console.
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse, System.Text.Encoding.GetEncoding("GB2312"));
            //Char[] readBuff = new Char[256];
            //int count = streamRead.Read(readBuff, 0, 256);
            //Console.WriteLine("\nThe contents of HTML Page are :\n");
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                outputData = streamRead.ReadLine();
                int index = outputData.IndexOf("class=\"nlist\"");
                if (index >= 0)
                {
                    found = true;
                    break;
                }
            }
            while (found)
            {
                //String outputData = new String(readBuff, 0, cou
                    int index=0;
                    if (outputData.IndexOf("<span>") >= 0)
                    {
                            time[i] = outputData.Substring(outputData.IndexOf("<span>") + 7, 10);
                            string href = outputData.Substring(outputData.IndexOf("href=") + 5);
                            href = href.Substring(0, href.IndexOf("title")-1);
                            result[i] = rootHttp + href;
                            index = outputData.IndexOf("target");
                            title[i] = outputData.Substring(outputData.IndexOf("title=") + 6, index - outputData.IndexOf("title=") - 6);
                            outputData = outputData.Substring(outputData.IndexOf("</a>")+4);
                            i++;
                            if (i > no - 1) break;                               
                    }              
            }
            // Release the response object resources.
            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();
            for (int j = 0; j < no; j++)
            {
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[j]);
                myHttpWebRequest.UserAgent = ".NET Framework Test Client";
                // Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable.
                myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
                // Display the contents of the page to the console.
                streamResponse = myHttpWebResponse.GetResponseStream();
                streamRead = new StreamReader(streamResponse, System.Text.Encoding.GetEncoding("GB2312"));
                //Char[] readBuff = new Char[256];
                //int count = streamRead.Read(readBuff, 0, 256);
                //Console.WriteLine("\nThe contents of HTML Page are :\n");
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("class=\"ntt\"") >= 0)
                    {
                        found = true;
                    }
                    if (outputData.IndexOf("class=\"clearboth\"") > 0)
                        found = false;
                    if (found)
                    {
                        outputData = outputData.Trim();
                        while (outputData.IndexOf("<") >= 0)
                        {
                            outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);
                        }
                        //outputData = outputData.Replace("<h1>", "");
                        // outputData = outputData.Replace("</h1>", "");
                        //  outputData = outputData.Replace("<br />", "");
                        // outputData = outputData.Replace("<p>", "");
                        //  outputData = outputData.Replace("</p>", "");
                        outputData = outputData.Replace("&ldquo;", "");
                        outputData = outputData.Replace("&rdquo;", "");
                        // outputData = outputData.Replace("<br/>", "");
                        // outputData = outputData.Replace("<b>", "");
                        // outputData = outputData.Replace("</b>", "");
                        // outputData = outputData.Replace("<hr id=\"hr\"/>", "");
                        //   outputData = outputData.Replace("<div id=\"max\">", "");
                        outputData = outputData.Replace("&nbsp;", "");
                        outputData = outputData.Replace("&mdash;", "");
                        outputData = outputData.Replace("\'", "\'\'");
                        outputData = outputData.Trim();
                        sb.Append(outputData + "\n");
                        //Console.WriteLine(outputData);
                    }
                    outputData = streamRead.ReadLine();
                }
                text[j] = sb.ToString();
            }
            return true;
        }
    }
}
