
namespace Common
{
    public class ArmDatum
    {
        private decimal _Id;
        private string _Title;
        private string _Link;
        private string _Pic;

        public string Link
        {
            get
            {
                return _Link;
            }
            set
            {
                _Link = value;
            }
        }
        public string Pic
        {
            get
            {
                return _Pic;
            }
            set
            {
                _Pic = value;
            }
        }

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
