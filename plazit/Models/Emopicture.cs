using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;

namespace plazit.Models
{
    public class Emopicture
    {
        public int Id { get; set; }
        public string nombre { get; set; }
        public string path { get; set; }

        public virtual ObservableCollection<emoFace> emoface { get; set; }

        public virtual Emopicture picture { get; set; }
    }
}