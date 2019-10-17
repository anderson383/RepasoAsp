using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace plazit.Models
{
    public class emoFace
    {
        public int Id { get; set; }
        public int EmoPictureID { get; set; }

        #region
        public int x { get; set; }
        public int y { get; set; }
        public int with { get; set; }
        public int heigth { get; set; }
        #endregion
    }
}