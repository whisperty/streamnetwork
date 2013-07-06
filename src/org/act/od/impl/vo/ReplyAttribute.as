package org.act.od.impl.vo
{
	import mx.collections.ArrayCollection;
	
	/**
	 * The attribute about reply figure.
	 */
	public class ReplyAttribute extends BPELAttribute
	{
		public var partnerLink:String;
		
		public var portType:String;
		
		public var operation:String;
		
		public var variable:String;
		
		public var faultName:String;
		
		public var suppressJoinFailure:String;
		
		public function ReplyAttribute()
		{
			super();
		}
		
		override public function getAttributeArray():ArrayCollection {
			var atts:ArrayCollection = super.getAttributeArray();
			
			atts.addItem({name: "Variable: ", value: variable, flag: "true"});
			atts.addItem({name: "Fault Name: ", value: faultName, flag: "true"});
			atts.addItem({name: "Operation: ", value: operation, flag: "true"});
			atts.addItem({name: "Partner Link: ", value: partnerLink, flag: "true"});
			atts.addItem({name: "Port Type: ", value: portType, flag: "true"});
			atts.addItem({name: "Suppress Join Failure: ", value: suppressJoinFailure, flag: "true"});
			return atts;
		}
		
		override public function update(atts:ArrayCollection):void {
			super.update(atts);
			
			for each(var att:Object in atts) {
				
				if(att.name == "Variable: ") {
					this.variable = att.value;
				}
				else if(att.name == "Fault Name: ") {
					this.faultName = att.value;
				}
				else if(att.name == "Operation: ") {
					this.operation = att.value;
				}
				else if(att.name == "Partner Link: ") {
					this.partnerLink = att.value;
				}
				else if(att.name == "Port Type: ") {
					this.portType = att.value;
				}
				else if(att.name == "Suppress Join Failure: ") {
					this.suppressJoinFailure = att.value;
				}
			}
		}
		
		override public function getAttributeXML():Array {
			var xmlArray:Array = super.getAttributeXML();
			
			var vNode:XML = new XML("<Attribute></Attribute>");
			vNode.@name = "variable";
//			vNode.@value = this.variable;
			vNode.appendChild(this.variable);
			
			var fnNode:XML = new XML("<Attribute></Attribute>");
			fnNode.@name = "faultName";
//			fnNode.@value = this.faultName;
			fnNode.appendChild(this.faultName);
			
			var opNode:XML = new XML("<Attribute></Attribute>");
			opNode.@name = "operation";
//			opNode.@value = this.operation;
			opNode.appendChild(this.operation);
			
			var plNode:XML = new XML("<Attribute></Attribute>");
			plNode.@name = "partnerLink";
//			plNode.@value = this.partnerLink;
			plNode.appendChild(this.partnerLink);
			
			var ptNode:XML = new XML("<Attribute></Attribute>");
			ptNode.@name = "portType";
//			ptNode.@value = this.portType;
			ptNode.appendChild(this.portType);
			
			var sjfNode:XML = new XML("<Attribute></Attribute>");
			sjfNode.@name = "suppressJoinFailure";
//			sjfNode.@value = this.suppressJoinFailure;
			sjfNode.appendChild(this.suppressJoinFailure);
			
			xmlArray.push(vNode,fnNode,opNode,plNode,ptNode,sjfNode);
			return xmlArray;
		}
		
		override public function setAttribute(atts:XMLList):void {
			var vNode:XMLList = atts.Attribute.(@name == "variable");
			var fnNode:XMLList = atts.Attribute.(@name == "faultName");
			var opNode:XMLList = atts.Attribute.(@name == "operation");
			var plNode:XMLList = atts.Attribute.(@name == "partnerLink");
			var ptNode:XMLList = atts.Attribute.(@name == "portType");
			var sjfNode:XMLList = atts.Attribute.(@name == "suppressJoinFailure");
			
//			this.variable = (vNode.@value!=null)?vNode.@value:"";
//			this.faultName = (fnNode.@value!=null)?fnNode.@value:"";
//			this.operation = (opNode.@value!=null)?opNode.@value:"";
//			this.partnerLink = (plNode.@value!=null)?plNode.@value:"";
//			this.portType = (ptNode.@value!=null)?ptNode.@value:"";
//			this.suppressJoinFailure = (sjfNode.@value!=null)?sjfNode.@value:"";
			
			this.variable = (vNode.children()!=null)?vNode.children().toString():"";
			this.faultName = (fnNode.children()!=null)?fnNode.children().toString():"";
			this.operation = (opNode.children()!=null)?opNode.children().toString():"";
			this.partnerLink = (plNode.children()!=null)?plNode.children().toString():"";
			this.portType = (ptNode.children()!=null)?ptNode.children().toString():"";
			this.suppressJoinFailure = (sjfNode.children()!=null)?sjfNode.children().toString():"";
		}
	}
}