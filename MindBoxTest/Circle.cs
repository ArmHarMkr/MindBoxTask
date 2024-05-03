namespace MindBoxTest
{
    public class Circle : IFigure
    {
        private double radius;

        public Circle(double radius)
        {
            this.radius = radius;
        }

        public override double CalculateArea()
        {
            return Math.PI * Math.Pow(radius, 2);
        }
        public override bool isRightAngled()
        {
            return false;
        }
    }
}
