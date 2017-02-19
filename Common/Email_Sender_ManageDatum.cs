
namespace Common
{
    public class Email_Sender_ManageDatum
    {
        private decimal _Id;
        private string _Email;
        private string _Send_Condition;

        public decimal Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
            }
        }

        public string Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
            }
        }

        public string Send_Condition
        {
            get
            {
                return _Send_Condition;
            }
            set
            {
                _Send_Condition = value;
            }
        }
    }
}
