package org.act.od.impl.figure
{
	public class BusinessFigure extends Activityow2Figure
	{
		import org.act.od.impl.vo.*;
		
		public function BusinessFigure()
		{
			super();
			
			//added by zjn
			this.attribute = new BusinessAttribute();
		}
	}
}