using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MindBoxTest
{
    public class Triangle : IFigure
    {
        private double firstSide;
        private double secondSide;
        private double thirdSide;

        public Triangle(double firstSide, double secondSide, double thirdSide)
        {
            this.firstSide = firstSide;
            this.secondSide = secondSide;
            this.thirdSide = thirdSide;

        }

        public override double CalculateArea()
        {
            double semiPerimeter = (double)(firstSide + secondSide + thirdSide) / 2;
            return Math.Sqrt(semiPerimeter * (semiPerimeter - firstSide) * (semiPerimeter - secondSide) * (semiPerimeter - thirdSide));
        }

        public override bool isRightAngled()
        {
            return Math.Pow(firstSide, 2) + Math.Pow(secondSide, 2) == Math.Pow(thirdSide, 2) ||
                               Math.Pow(secondSide, 2) + Math.Pow(thirdSide, 2) == Math.Pow(firstSide, 2) ||
                               Math.Pow(thirdSide, 2) + Math.Pow(firstSide, 2) == Math.Pow(secondSide, 2);
        }
    }
}
