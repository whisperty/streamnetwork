package org.act.od.impl.figure
{
	import flash.utils.Dictionary;
	
	
	public class FigureFactory
	{
		[Bindable]
		[Embed(source="../assets/figures/start.gif")]
		public static var start:Class;
		
		[Bindable]
        [Embed(source="../assets/figures/end.gif")]
        public static var end :Class;
		
		[Bindable]
        [Embed(source="../assets/icon/tool/switch.gif")]
        public static var Switch :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/link.gif")]
        public static var link :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/activity.gif")]
        public static var activity :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/select.jpg")]
        public static var subProcess :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/email.gif")]
        public static var email :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/fax.gif")]
        public static var fax :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/pager.gif")]
        public static var pager :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/sms.gif")]
        public static var sms :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/voice.gif")]
        public static var voice :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/invoke.gif")]
        public static var invoke :Class;
		
		[Bindable]
        [Embed(source="../assets/icon/tool/receive.gif")]
        public static var receive :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/reply.gif")]
        public static var reply :Class;
        
        [Bindable]
        [Embed(source="../assets/icon/tool/wait.gif")]
        public static var wait :Class;
		
		[Bindable]
        [Embed(source="../assets/icon/tool/assign.gif")]
        public static var assign :Class;


        private static var dic :Dictionary = new Dictionary();

		private static function initDic() :void {	
			var id :int;
			var name :String;
			
			id = 100;
			name = "DataStream";
			dic[id] = name;
			dic[name] = id;
			
			id = 101;
			name = "End";
			dic[id] = name;
			dic[name] = id;
			
			id = 103;
			name = "Join";
			dic[id] = name;
			dic[name] = id;
			
			id = 114;
			name = "Select";
			dic[id] = name;
			dic[name] = id;
			
			id = 102;
			name = "Project";
			dic[id] = name;
			dic[name] = id;
			
			id = 105;
			name = "Fax";
			dic[id] = name;
			dic[name] = id;
			
			id = 104;
			name = "Pager";
			dic[id] = name;
			dic[name] = id;
			
			id = 107;
			name = "SMS";
			dic[id] = name;
			dic[name] = id;
			
			id = 108;
			name = "Voice";
			dic[id] = name;
			dic[name] = id;
			
			id = 106;
			name = "Email";
			dic[id] = name;
			dic[name] = id;
			
			id = 109;
			name = "Invoke";
			dic[id] = name;
			dic[name] = id;
			
			id = 113;
			name = "Receive";
			dic[id] = name;
			dic[name] = id;
			
			id = 110;
			name = "Reply";
			dic[id] = name;
			dic[name] = id;
			
			id = 111;
			name = "Wait";
			dic[id] = name;
			dic[name] = id;
			
			id = 112;
			name = "Assign";
			dic[id] = name;
			dic[name] = id;
			
			id = 3;
			name = "Link";
			dic[id] = name;
			dic[name] = id;
			// below are user defined operators
			
		}
		
		public static function createFigure(figureId:int):IFigure{
			var ifi:IFigure;
			if(figureId > 3 && figureId <100)
				ifi = new Userow2Figure(figureId);
			else{
			switch(figureId)
			{
				case -1:
				ifi=null;
				break;
				
				case 3:
				ifi=new LinkFigure();
				break;
				
				case 100:
				ifi=new Startow2Figure();
				break;
				
				case 101:
				ifi=new Endow2Figure();
				break;
				
				case 102:
				ifi=new Switchow2Figure();
				break;
				
				case 103:
				ifi=new Activityow2Figure();
				break;
				
				case 104:
				ifi=new Pagerow2Figure();
				break;
				
				case 105:
				ifi=new Faxow2Figure();
				break;
				
				case 106:
				ifi=new Emailow2Figure();
				break;
				
				case 107:
				ifi=new SMSow2Figure();
				break;
				
				case 108:
				ifi=new Voiceow2Figure();
				break;
				
		
				
				case 114:
				ifi=new SubProcessow2Figure();
				break;
				
				default:
				ifi=null;
				break;	
				
			}
			}
			if(ifi){
				if(ifi is GraphicalFigure){
					GraphicalFigure(ifi).figureName = id2name(ifi.getdrawid());
				}
			}
			return ifi;
		}
		
		
		public static function nametoid(classname:String):int{
			FigureFactory.initDic();
			var id :int = FigureFactory.dic[classname];
			return id;
		}
		
		public static function id2name(id :int) :String {
			FigureFactory.initDic();
			var name :String = FigureFactory.dic[id];
			return name;
		}
		
		//edited by ty
		public static function setdic(name:String, id:String):void
		{
			dic[id]=name;
			dic[name]=id;
		}

	}
}