/** 
 * @Company: 深圳市烈焰时代科技有限公司
 * @File: ${package}.module.${moduleName}.Model.vo.${classNameVO}.ts
 * @Description: ${classNameVO} 
 * @Create: AutoCode ${date} 
 * @version: V1.0 
 */
 module sudu {
    export class ${classNameVO} {
	
	<#list columnInfoList as columnInfo>
		/** ${columnInfo.comment} */
		private _${columnInfo.name}:${columnInfo.asDataType};
	</#list>
	
		public constructor(<#list columnInfoList as columnInfo>${columnInfo.name}:${columnInfo.asDataType}<#if conlumnInfoCount!=columnInfo_index+1>, </#if></#list>) {
		<#list columnInfoList as columnInfo>
			this._${columnInfo.name} = ${columnInfo.name};
		</#list>
		}
		
	
	<#list columnInfoList as columnInfo>
		public get ${columnInfo.name}():${columnInfo.asDataType} {
			return this._${columnInfo.name};
		}
	
		public set ${columnInfo.name}(${columnInfo.name}:${columnInfo.asDataType}) {
			this._${columnInfo.name} = ${columnInfo.name};
		}
	
	</#list>
	}
}