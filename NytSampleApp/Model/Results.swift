/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import ObjectMapper

struct Results : Mappable {
	var url : String?
	var adx_adx_keywordswords : String?
	var column : String?
	var section : String?
	var byline : String?
	var type : String?
	var title : String?
	var abstract : String?
	var published_date : String?
	var source : String?
	var id : Int?
	var asset_id : Int?
	var views : Int?
	var des_facet : [String]?
	var org_facet : [String]?
	var per_facet : String?
	var geo_facet : String?
	var media : [Media]?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		url <- map["url"]
//        adx_keywords <- map["adx_keywords"]
		column <- map["column"]
		section <- map["section"]
		byline <- map["byline"]
		type <- map["type"]
		title <- map["title"]
		abstract <- map["abstract"]
		published_date <- map["published_date"]
		source <- map["source"]
		id <- map["id"]
		asset_id <- map["asset_id"]
		views <- map["views"]
		des_facet <- map["des_facet"]
		org_facet <- map["org_facet"]
		per_facet <- map["per_facet"]
		geo_facet <- map["geo_facet"]
		media <- map["media"]
	}

}
