package
{
	import Array;
	
	import flash.display.Sprite;
	
	import flexUnitTests.MathExTest;
	
	import flexunit.flexui.FlexUnitTestRunnerUIAS;
	
	public class FlexUnitApplication extends Sprite
	{
		public function FlexUnitApplication()
		{
			onCreationComplete();
		}
		
		private function onCreationComplete():void
		{
			var testRunner:FlexUnitTestRunnerUIAS=new FlexUnitTestRunnerUIAS();
			testRunner.portNumber=8765; 
			this.addChild(testRunner); 
			testRunner.runWithFlexUnit4Runner(currentRunTestSuite(), "MathEx");
		}
		
		public function currentRunTestSuite():Array
		{
			var testsToRun:Array = new Array();
			testsToRun.push(flexUnitTests.MathExTest);
			return testsToRun;
		}
	}
}