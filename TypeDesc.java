public class TypeDesc {
 
        private String typeNameName; 
        private Integer typeLength = null;
 
        public void setTypeLength(Integer typeLength){
            this.typeLength = typeLength;
        }
 
        public void setTypeLength(String typeLength){
            this.typeLength = Integer.valueOf(typeLength);
        }
 
        public void setTypeName(String typeNameName){
            this.typeNameName = typeNameName;
        }
 
        public String getTypeName(){
            return typeNameName;
        }
 
        public Integer getTypeLength(){
            return typeLength;
        }
}