using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Threading;


namespace GrapITsoft
{
    class Entrance
    {
        const int MAX = 4;
        
        static LogInfo log = new LogInfo();
        //主程序入口
        static void Main(string[] args)
        {
            log.writeIn("主程序启动!");
            Entrance sv = new Entrance();
            Thread th = new Thread(new ThreadStart(sv.Service));
            if (th.ThreadState != ThreadState.Running)
            {
                log.writeIn("打开服务中...");
                try
                {
                    th.Start();
                    log.writeIn("服务已打开.");
                }
                catch (System.OutOfMemoryException)
                {
                    log.writeIn("内存不足,服务启动失败!");
                }
            }
            Console.WriteLine("按回车键停止服务!");
            Console.Read();
            th.Abort();
            log.writeIn("服务已关闭.");
            return;
        }
        //服务入口
        public void Service()
        {
            int college = 11;
            while (true)
            {
                log.writeIn("college = " + (college % 29).ToString());
                Console.WriteLine((college % 29).ToString());
                Inherite c;
                #region CollegeSelected
                switch (college % 29)
                {
                    case 0:
                        c = new hdu(MAX);
                        break;
                    case 1:
                        c = new Mechanical(MAX);
                        break;
                    case 2:
                        c = new Elec(MAX);
                        break;
                    case 3:
                        c = new Comm(MAX);
                        break;
                    case 4:
                        c = new Auto(MAX);
                        break;
                    case 5:
                        c = new Computer(MAX);
                        break;
                    case 6:
                        c = new cmee(MAX);
                        break;
                    case 7:
                        c = new lisie(MAX);
                        break;
                    case 8:
                        c = new Itsoft(MAX);
                        break;
                    //case 9:
                    //    break;
                    case 10:
                        c = new economics(MAX);
                        break;
                    case 11:
                        c = new Managedepartment(MAX);
                        break;
                    case 12:
                        c = new Accountingxy(MAX);
                        break;
                    case 13:
                        c = new Foreign(MAX);
                        break;
                    case 14:
                        c = new syxy(MAX);
                        break;
                    case 15:
                        c = new rwxy(MAX);
                        break;
                    case 16:
                        c = new marx(MAX);
                        break;
                    case 17:
                        c = new ped(MAX);
                        break;
                    case 18:
                        c = new Splendid(MAX);
                        break;
                    case 19:
                        c = new sie(MAX);
                        break;
                    case 20:
                        c = new adultedu(MAX);
                       break;
                    case 21:
                        c = new hziee(MAX);
                        break;
                    case 22:
                        c = new jwc(MAX);
                        break;
                    case 23:
                        c = new student(MAX);
                        break;
                    case 24:
                        c = new Renshi(MAX);
                        break;
                    case 25:
                        c = new research(MAX);
                        break;
                    case 26:
                        c = new Grs(MAX);
                        break;
                    //case 27:
                    //    break;
                    //case 28:
                    //    break;
                    default:
                        c = new Itsoft(MAX);//?
                        break;
                }
                #endregion
                Loading(c);
                college++;
            }
        }
        //加载数据
        static void Loading(Inherite c)
        {
            MySqlConnection conn = new MySqlConnection(ConfigurationManager.AppSettings["connectionstring"]);
            //log.writeIn("连接数据库中...");
            try
            {
                conn.Open();
            }
            catch
            {
                log.writeIn("数据库打开失败!");
                return;
            }

            MySqlCommand setformat = new MySqlCommand("set names gbk", conn);
            setformat.ExecuteNonQuery();
            setformat.Dispose();

            //log.writeIn("数据库连接成功");
            string sql = "select website,ca_id from hdu_ihdu.website where co_id = " + c.getCo_id();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
           // log.writeIn("读取学院网站信息...");
            MySqlDataAdapter msda = new MySqlDataAdapter(cmd);
            //log.writeIn("读取学院网站信息成功");
            DataSet ds = new DataSet();
            msda.Fill(ds, "table");
            foreach (DataRow row in ds.Tables["table"].Rows)
            {
                c.SetWebsite(row["website"].ToString());
                //log.writeIn("读取网页:" + row["website"].ToString() + "的信息中...");
                try
                {
                    c.ReadData();
                   // log.writeIn("读取成功");
                }
                catch
                {
                    log.writeIn("读取" + row["website"].ToString() + "失败");
                    continue;
                }
                if (Compare(c, row["ca_id"].ToString()))
                {
                   // log.writeIn("正在插入学院:" + c.getCo_id() + "信息...");
                    InsertData(c, row["ca_id"].ToString());
                   // log.writeIn("插入学院:" + c.getCo_id() + "信息成功");
                }
                else
                    ;
               // log.writeIn("未发现更新信息!");
            }
            conn.Close();
            //log.writeIn("数据库连接关闭");
        }
        //对比消息是否已存在
        static bool Compare(Inherite c,string ca_id)
        {
            string co_id = c.getCo_id();
            string connstr = ConfigurationManager.AppSettings["connectionstring"];
            MySqlConnection conn = new MySqlConnection(connstr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "select title,ca_id from hdu_ihdu.message where co_id = " + co_id + " and ca_id = " + ca_id + " order by inserttime desc limit 1";
            cmd.Connection = conn;
            string title,id;
            try
            {
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    title = reader["title"].ToString();
                    id = reader["ca_id"].ToString();
                }
                if (c.rtnTitle() == title && ca_id == id)
                    return false;
            }
            catch
            {
                return true;
            }
            conn.Close();
            return true;
        }
        //插入数据到数据库
        static void InsertData(Inherite c,string ca_id)
        {
            int result;
            string[] title = new string[MAX];
            string[] time = new string[MAX];
            string[] text = new string[MAX];
            string add = null;//
            c.rtnInfo(ref title, ref time, ref text);
            string connstr = ConfigurationManager.AppSettings["connectionstring"];
            MySqlConnection conn = new MySqlConnection(connstr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            for (int i = MAX - 1; i >= 0; i--)
            {
                MySqlCommand setformat = new MySqlCommand("set names gbk", conn);
                setformat.ExecuteNonQuery();
                setformat.Dispose();
                cmd.CommandText = "insert into hdu_ihdu.message (title,date,text,inserttime,co_id,ca_id) select '" + title[i] + "','" + time[i] + "','" + text[i] + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'," + c.getCo_id() + "," + ca_id + " from dual where not exists (select * from hdu_ihdu.message where title = '" + title[i] + "' and ca_id = " + ca_id + ")";
                cmd.Connection = conn;
                try
                {
                    add = "";
                    if (title[i] == "")
                    {
                        break;
                    }
                    result = cmd.ExecuteNonQuery();
                    if (result == 0)
                    {
                        add = "result=0";//这就意味着数据库其实并没有变更
                    }
                    //else 
                    log.writeIn("已插入 " + title[i] + add); 
                }
                  catch(Exception er)
                {
                    log.writeIn("插入失败" + er.Message);//
                }
                //log.writeIn("插入成功");
                Thread.Sleep(1000);//等待时间
            }
            conn.Close();
            cmd.Dispose();
        }
    }
}
