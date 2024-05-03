using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MindBoxTest
{
    public abstract class IFigure
    {
        public abstract double CalculateArea();
        public abstract bool isRightAngled();

        //добавить новый класс, который реализует интерфейс
    }
}
