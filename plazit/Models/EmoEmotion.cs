using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace plazit.Models
{
    public class EmoEmotion
    {
        public int Id { get; set; }
        public int score { get; set; }
        public int emoFaceId { get; set; }

        public emoEmotionEnum emotionType { get; set; }
    }
}