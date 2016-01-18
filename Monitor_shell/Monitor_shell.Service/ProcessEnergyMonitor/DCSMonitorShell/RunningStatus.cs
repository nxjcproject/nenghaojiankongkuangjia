using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.DCSMonitorShell
{
    public class RunningStatus
    {

        
        public RunningStatus(bool t_keepReady, bool t_foreward, bool t_reversal, bool t_localeForeward,
            bool t_localeReversal, bool t_breakdown, bool t_stop)
        {
            KeepReady = t_keepReady;
            Foreward = t_foreward;
            Reversal = t_reversal;
            LocaleForeward = t_localeForeward;
            LocaleReversal = t_localeReversal;
            Breakdown = t_breakdown;
            Stop = t_stop;
        }
        public RunningStatus() { }
        /// <summary>
        /// 备妥
        /// </summary>
        public bool KeepReady { get; set; }
        /// <summary>
        /// 正转
        /// </summary>
        public bool Foreward { get; set; }
        /// <summary>
        /// 反转
        /// </summary>
        public bool Reversal { get; set; }
        /// <summary>
        /// 机正
        /// </summary>
        public bool LocaleForeward { get; set; }
        /// <summary>
        /// 机反
        /// </summary>
        public bool LocaleReversal { get; set; }
        /// <summary>
        /// 故障
        /// </summary>
        public bool Breakdown { get; set; }
        /// <summary>
        /// 停止
        /// </summary>
        public bool Stop { get; set; }

        public int ResultNum
        {
            get
            {
                if (Breakdown)
                {
                    return 5;
                }
                else if(Foreward)
                {
                    return 1;
                }
                else if (Reversal)
                {
                    return 2;
                }
                else if (LocaleForeward)
                {
                    return 3;
                }
                else if (LocaleReversal)
                {
                    return 4;
                }
                else if (KeepReady)
                {
                    return 0;
                }
                else if (Stop)
                {
                    return 6;
                }
                else
                {
                    return 6;
                }
            }
        }
    }
}
