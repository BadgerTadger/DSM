using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dsm_win
{
    public class OperationResult
    {
        public bool Success { get; set; }

        public List<string> Message { get; set; }

        public OperationResult()
        {
            Success = true;
            Message = new List<string>();
        }

        public void AddMessage(string message)
        {
            Message.Add(message);
        }
    }
}
