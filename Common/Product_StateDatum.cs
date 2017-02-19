
namespace Common
{
    public class Product_StateDatum
    {
        private decimal _Id;
        private string _Title;

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

        public string Title
        {
            get
            {
                return _Title;
            }
            set
            {
                _Title = value;
            }
        }


    }
}
