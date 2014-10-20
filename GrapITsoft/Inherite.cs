using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GrapITsoft
{
    public abstract class Inherite
    {//模板页
        protected string[] title;
        protected string[] time;
        protected string[] text;
        protected string co_id;
        protected int no;
        protected string website;
        
        public string rtnTitle()//
        {
            return title[0];//?
        }

        public string getCo_id()//
        {
            return co_id;
        }

        protected Inherite(int amount)//
        {
            no = amount;
            time = new string[amount];
            title = new string[amount];
            text = new string[amount];
        }

        public void SetWebsite(string web)//
        {
            website = web;
        }

        public abstract bool ReadData();//

        public bool rtnInfo(ref string[] t, ref string[] tm, ref string[] txt)//
        {
            t = title;
            tm = time;
            txt = text;
            return true;
        }
    }
}
