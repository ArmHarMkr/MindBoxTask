namespace MindBoxTest.Tests
{
    public class FigureTest
    {
        [Fact]
        public void Circle_CalculateArea_ReturnsCorrectValue()
        {
            // Arrange
            Circle circle = new Circle(5);

            //Act
            double area = circle.CalculateArea();

            // Assert
            Assert.Equal(78.54, area, 2);
        }

        [Fact]
        public void Triangle_CalculateArea_ReturnsCorrectValue()
        {
            // Arrange
            Triangle triangle = new(3, 4, 5);

            // Act
            double area = triangle.CalculateArea();

            // Assert
            Assert.Equal(6, area);
        }

        [Fact]
        public void Triangle_IsRightAngled_ReturnsTrue()
        {
            // Arrange
            Triangle triangle = new Triangle(3, 4, 5);

            // Act
            bool isRightAngled = triangle.isRightAngled();

            // Assert
            Assert.True(isRightAngled); // Проверяем, что треугольник является прямоугольным
        }

        [Fact]
        public void Triangle_IsRightAngled_ReturnsFalse()
        {
            // Arrange
            Triangle triangle = new Triangle(5, 6, 7);

            // Act
            bool isRightAngled = triangle.isRightAngled();

            // Assert
            Assert.False(isRightAngled); 
        }
    }
}