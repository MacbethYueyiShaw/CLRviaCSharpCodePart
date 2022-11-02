using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _6_3
{
    internal class Accessibility
    {
        public void public_method()
        {

        }
        private void private_method()
        {

        }
        void default_method()
        {

        }
        internal void internal_method()
        {

        }
        protected void protected_method()
        {

        }
        protected internal void protected_internal_method()
        {

        }
        void test_all_method()
        {
            public_method();
            private_method();
            default_method();
            internal_method();
            protected_method();
            protected_internal_method();
        }
    }
}
