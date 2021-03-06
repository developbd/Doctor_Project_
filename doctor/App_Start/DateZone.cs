﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doctor
{
    public class DateZone
    {
        private string _Zone;
        private string _Sign;
        private string _tTime_Off_Set;

        public DateZone(string TimeZone)
        {
            _Zone = TimeZone;
        }
        private string _Date_Time_Zone_PV(string TimeStyle)
        {
            try
            {
                _Sign = _Zone.Substring(0, 1);
                _tTime_Off_Set = _Zone.Substring(1, 5);
                TimeSpan _offset = new TimeSpan();
                _offset = TimeSpan.Parse(_tTime_Off_Set);
                DateTime _utc = DateTime.UtcNow;
                DateTime date;
                if (_Sign == "+")
                { date = _utc + _offset; }
                else if (_Sign == "-")
                { date = _utc - _offset; }
                else
                { date = _utc + _offset; }
                return date.ToString(TimeStyle);
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }
        public string DateTimeZone(string TimeStyle)
        {
            return _Date_Time_Zone_PV(TimeStyle);
        }

    }
}