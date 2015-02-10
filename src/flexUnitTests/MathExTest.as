package flexUnitTests
{
	import flexunit.framework.Assert;
	
	import org.flexunit.asserts.assertEquals;
	
	public class MathExTest
	{		
		[Before]
		public function setUp():void
		{
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testAngle():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testClamp():void
		{
			assertEquals(MathEx.clamp(-100, -50, 100), -50);
			assertEquals(MathEx.clamp(200, -50, 100), 100);
			assertEquals(MathEx.clamp(50, 0, 100), 50);
			
			assertEquals(MathEx.clamp(-90.5, -45.5, 95.5), -45.5);
			assertEquals(MathEx.clamp(222.2, -75.5, 40.5), 40.5);
			assertEquals(MathEx.clamp(25.5, 10.5, 80.5), 25.5);
			
			assertEquals(MathEx.clamp(50, 100, 0), 100);
			assertEquals(MathEx.clamp(500, 100, 0), 100);
		}
		
		[Test]
		public function testDeltaAngle():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testDistance():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testNormalizeAngle():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRand():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRand_int():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRepeat():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testVx():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testVy():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testZeroPadding():void
		{
			Assert.fail("Test method Not yet implemented");
		}
	}
}