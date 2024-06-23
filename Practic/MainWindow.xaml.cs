using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Management;
using System.IO;
using System.Windows.Media.Animation;

namespace Practic
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string processor = GetProcessorInfo();
            ProcessorTextBox.Text = processor;

            string ram = GetRamInfo();
            RamTextBox.Text = ram;

            string videoCard = GetVideoCardInfo();
            VideoCardTextBox.Text = videoCard;

            string computerName = Environment.MachineName;
            ComputerNameTextBox.Text = computerName;

            SaveInfo();
        }
        private string GetProcessorInfo()
        {
            ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_Processor");
            ManagementObject processor = searcher.Get().Cast<ManagementObject>().FirstOrDefault();
            return (string)processor["Name"];
        }
        private string GetRamInfo()
        {
            ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_OperatingSystem");
            ManagementObject os = searcher.Get().Cast<ManagementObject>().FirstOrDefault();
            ulong totalMemory = (ulong)os["TotalVisibleMemorySize"];
            return $"{(totalMemory / 1024f / 1024f):F2} GB";
        }
        private string GetVideoCardInfo()
        {
            ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_VideoController");
            ManagementObject videoController = searcher.Get().Cast<ManagementObject>().FirstOrDefault();
            return (string)videoController["Name"];

        }
        void SaveInfo()
        {
            string[] Array = new string[]
            {
                ProcessorTextBox.Text, RamTextBox.Text, VideoCardTextBox.Text, ComputerNameTextBox.Text
            };
            using (var SV = new StreamWriter(@"C:\Users\Huawei\OneDrive\Рабочий стол\SaveInfoComp.txt", true))
            {
                foreach (var item in Array)
                {
                    SV.WriteLine(item);
                }
                SV.WriteLine();
            };
        }
    }
}
