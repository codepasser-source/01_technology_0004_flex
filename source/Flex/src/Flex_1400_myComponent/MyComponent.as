package Flex_1400_myComponent
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	
	import mx.core.UIComponent;
	
	
	import spark.components.Button;
	import spark.components.Panel;
	import spark.components.TextArea;
	
	
	/**
	 * 
	 * @author ChengYangyang
	 * 如果要创建一个自定义组件，你需要重写UIComponent类的某些方法，
	 * 最少需要重写如下方法：构造函数, createChildren(), commitProperties(), measure(), layoutChrome(), updateDisplayList() 
	 */
	
	public class MyComponent extends UIComponent
	{
		private var text_mc:TextArea;
		private var button_mc : Button;
		
		/**
		 * 构造器 
		 */
		public function MyComponent()
		{
			super();
			trace("MyComponent function 构造器 ");
		}
		
		
		/**
		 *1.createChildren方法 
		 *此方法的作用是在此自定义组件中创建子组件。 
         *此方法不用你去调用，Flex在你将此自定义组件使用addChild方法加入到父组件时自动调用 
		 */		
		override protected function createChildren():void {
			
			super.createChildren();
			trace("createChildren function ");
			
			if(!text_mc){
				trace(!text_mc);
				text_mc = new TextArea(); 
				text_mc.explicitWidth = 80; 
				text_mc.width=100;
				text_mc.height=50;				
				text_mc.editable = false; 
				text_mc.text="自定义组件 textArea children";
				text_mc.addEventListener("change", handleChangeEvent); 
				// Add the child component to the custom component. 
				addChild(text_mc);  
			} 
			if(!button_mc){    
				trace(!button_mc);
				button_mc = new Button(); 
				button_mc.label = "Toggle Editing"; 
				button_mc.addEventListener("click", handleClickEvent); 
				// Add the child component to the custom component. 
				addChild(button_mc); 
			} 

		} 

	 

	    /**
		 *2.commitProperties() 方法
		 *此方法是在修改组件属性时使用。 
         *此方法不用你去调用。当你调用invalidateProperties()（刷新属性）、addChild()（增加子组件）方法时，Flex会自动调用此方法。这样组件在下次显示时，就能以新的属性来显示。
         *此方法还有一个作用是为measure()方法提供最新的属性信息。  
		 */	
		override protected function commitProperties():void{
			trace("commitProperties function ");
		}
		
		
		
		
		/**
		 *3. measure() 方法
		 *此方法的作用是设置组件的默认尺寸。 
		 *此方法不用你去调用。当你调用invalidateSize ()（刷新尺寸）、addChild()（增加子组件）方法时，Flex会自动调用此方法。这样组件在下次显示时，就能以默认尺寸来显示。
		 *如果你显式的设置了组件的尺寸，如<mx:Button height="10" width="10"/>，Flex就不用调用此方法了。要注意，measure()方法只是设置组件的默认尺寸，在updateDisplayList()方法中，组件具备的实际尺寸(actual size)与默认尺寸可能不同。
		 */ 
		override protected function measure():void { 
			super.measure(); 
			trace("measure function ");
			measuredWidth=300; 
			measuredMinWidth=100; 
			measuredHeight=300; 
			measuredMinHeight=100; 
			
		} 
		
		
		
		
		
		/**
		 * layoutChrome() 方法 
		 *一些容器类（Container）或其子类采用此方法设置组件的border Area（边框区域）。 
		 *此方法不用你去调用。当你调用invalidateDisplayList ()（刷新显示）方法时，Flex会自动调用此方法。这样组件在下次显示时，就能以新的边框来显示。
		 *典型的用法是你可以重写RectangularBorder类。 
		 *一个将组件的边框区域(border Area)和内容区域(content area)分开处理的原因是当Container.autoLayout=false时。 
		 *总括的来讲，layoutChrome()是用来处理边框区域的刷新显示，而updateDisplayList()用来处理内容区域的刷新显示。 
         */
		
		
		/**
		 * updateDisplayList(unscaledWidth:Number, unscaledHeight:Number)  方法 
         *此方法不用你去调用。当你调用invalidateDisplayList ()（刷新显示）、addChild()（增加子组件）方法时，Flex会自动调用此方法。这样组件在下次显示时，就能以新的样子来显示。其实类似VC++中的PAINT消息处理。
         *此方法的主要作用为： 
         *A.更改组件的尺寸和位置。要改变尺寸，在此方法中使用setActualSize()方法，而不是使用width和height属性来完成。要改变位置，在此方法中使用move()方法，而不是使用x和y属性来完成。
         *B.绘制可视元素，如皮肤、样式、边框。你可以使用Flash Drawing API来完成。 
         */
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{
		
			trace("updateDisplayList function");
			graphics.lineStyle(1, 0x000000, 2.0);
			graphics.drawRect(0, 0, unscaledWidth, unscaledHeight); 
		}
		
		
		protected function handleChangeEvent(event:Event):void{
		
		
		}
		
		protected function  handleClickEvent(event:Event):void{
		
		
		}
		
	}
}






































