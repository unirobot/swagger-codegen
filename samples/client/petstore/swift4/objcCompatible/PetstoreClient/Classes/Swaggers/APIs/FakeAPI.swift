//
// FakeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FakeAPI {
    /**

     - parameter body: (body) Input boolean as post body (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fakeOuterBooleanSerialize(body: OuterBoolean? = nil, completion: @escaping ((_ data: OuterBoolean?,_ error: Error?) -> Void)) {
        fakeOuterBooleanSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /fake/outer/boolean
     - Test serialization of outer boolean types
     - examples: [{contentType=application/json, example={ }}]
     
     - parameter body: (body) Input boolean as post body (optional)

     - returns: RequestBuilder<OuterBoolean> 
     */
    open class func fakeOuterBooleanSerializeWithRequestBuilder(body: OuterBoolean? = nil) -> RequestBuilder<OuterBoolean> {
        let path = "/fake/outer/boolean"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OuterBoolean>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input composite as post body (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fakeOuterCompositeSerialize(body: OuterComposite? = nil, completion: @escaping ((_ data: OuterComposite?,_ error: Error?) -> Void)) {
        fakeOuterCompositeSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /fake/outer/composite
     - Test serialization of object with outer number type
     - examples: [{contentType=application/json, example={
  "my_string" : { },
  "my_number" : { },
  "my_boolean" : { }
}}]
     
     - parameter body: (body) Input composite as post body (optional)

     - returns: RequestBuilder<OuterComposite> 
     */
    open class func fakeOuterCompositeSerializeWithRequestBuilder(body: OuterComposite? = nil) -> RequestBuilder<OuterComposite> {
        let path = "/fake/outer/composite"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OuterComposite>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input number as post body (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fakeOuterNumberSerialize(body: OuterNumber? = nil, completion: @escaping ((_ data: OuterNumber?,_ error: Error?) -> Void)) {
        fakeOuterNumberSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /fake/outer/number
     - Test serialization of outer number types
     - examples: [{contentType=application/json, example={ }}]
     
     - parameter body: (body) Input number as post body (optional)

     - returns: RequestBuilder<OuterNumber> 
     */
    open class func fakeOuterNumberSerializeWithRequestBuilder(body: OuterNumber? = nil) -> RequestBuilder<OuterNumber> {
        let path = "/fake/outer/number"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OuterNumber>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input string as post body (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fakeOuterStringSerialize(body: OuterString? = nil, completion: @escaping ((_ data: OuterString?,_ error: Error?) -> Void)) {
        fakeOuterStringSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /fake/outer/string
     - Test serialization of outer string types
     - examples: [{contentType=application/json, example={ }}]
     
     - parameter body: (body) Input string as post body (optional)

     - returns: RequestBuilder<OuterString> 
     */
    open class func fakeOuterStringSerializeWithRequestBuilder(body: OuterString? = nil) -> RequestBuilder<OuterString> {
        let path = "/fake/outer/string"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OuterString>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body)  
     - parameter query: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testBodyWithQueryParams(body: User, query: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        testBodyWithQueryParamsWithRequestBuilder(body: body, query: query).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - PUT /fake/body-with-query-params
     
     - parameter body: (body)  
     - parameter query: (query)  

     - returns: RequestBuilder<Void> 
     */
    open class func testBodyWithQueryParamsWithRequestBuilder(body: User, query: String) -> RequestBuilder<Void> {
        let path = "/fake/body-with-query-params"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": query
        ])

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     To test \"client\" model
     
     - parameter body: (body) client model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testClientModel(body: Client, completion: @escaping ((_ data: Client?,_ error: Error?) -> Void)) {
        testClientModelWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     To test \"client\" model
     - PATCH /fake
     - To test \"client\" model
     - examples: [{contentType=application/json, example={
  "client" : "client"
}}]
     
     - parameter body: (body) client model 

     - returns: RequestBuilder<Client> 
     */
    open class func testClientModelWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testEndpointParameters(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: Data? = nil, date: Date? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        testEndpointParametersWithRequestBuilder(number: number, double: double, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, integer: integer, int32: int32, int64: int64, float: float, string: string, binary: binary, date: date, dateTime: dateTime, password: password, callback: callback).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - POST /fake
     - Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - BASIC:
       - type: basic
       - name: http_basic_test
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func testEndpointParametersWithRequestBuilder(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: Data? = nil, date: Date? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "integer": integer?.encodeToJSON(),
            "int32": int32?.encodeToJSON(),
            "int64": int64?.encodeToJSON(),
            "number": number,
            "float": float,
            "double": double,
            "string": string,
            "pattern_without_delimiter": patternWithoutDelimiter,
            "byte": byte,
            "binary": binary,
            "date": date?.encodeToJSON(),
            "dateTime": dateTime?.encodeToJSON(),
            "password": password,
            "callback": callback
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter enumFormStringArray
     */
    public enum EnumFormStringArray_testEnumParameters: String { 
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumFormString
     */
    public enum EnumFormString_testEnumParameters: String { 
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumHeaderStringArray
     */
    public enum EnumHeaderStringArray_testEnumParameters: String { 
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumHeaderString
     */
    public enum EnumHeaderString_testEnumParameters: String { 
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryStringArray
     */
    public enum EnumQueryStringArray_testEnumParameters: String { 
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumQueryString
     */
    public enum EnumQueryString_testEnumParameters: String { 
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryInteger
     */
    public enum EnumQueryInteger_testEnumParameters: Int { 
        case _1 = 1
        case number2 = -2
    }

    /**
     * enum for parameter enumQueryDouble
     */
    public enum EnumQueryDouble_testEnumParameters: Double { 
        case _11 = 1.1
        case number12 = -1.2
    }

    /**
     To test enum parameters
     
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to -efg)
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (form) Query parameter enum test (double) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testEnumParameters(enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil, enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        testEnumParametersWithRequestBuilder(enumFormStringArray: enumFormStringArray, enumFormString: enumFormString, enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     To test enum parameters
     - GET /fake
     - To test enum parameters
     
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to -efg)
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (form) Query parameter enum test (double) (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func testEnumParametersWithRequestBuilder(enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil, enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "enum_form_string_array": enumFormStringArray,
            "enum_form_string": enumFormString?.rawValue,
            "enum_query_double": enumQueryDouble?.rawValue
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "enum_query_string_array": enumQueryStringArray, 
            "enum_query_string": enumQueryString?.rawValue, 
            "enum_query_integer": enumQueryInteger?.rawValue
        ])
        let nillableHeaders: [String: Any?] = [
            "enum_header_string_array": enumHeaderStringArray,
            "enum_header_string": enumHeaderString?.rawValue
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     test inline additionalProperties
     
     - parameter param: (body) request body 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testInlineAdditionalProperties(param: Any, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        testInlineAdditionalPropertiesWithRequestBuilder(param: param).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     test inline additionalProperties
     - POST /fake/inline-additionalProperties
     - 
     
     - parameter param: (body) request body 

     - returns: RequestBuilder<Void> 
     */
    open class func testInlineAdditionalPropertiesWithRequestBuilder(param: Any) -> RequestBuilder<Void> {
        let path = "/fake/inline-additionalProperties"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: param)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     test json serialization of form data
     
     - parameter param: (form) field1 
     - parameter param2: (form) field2 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testJsonFormData(param: String, param2: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        testJsonFormDataWithRequestBuilder(param: param, param2: param2).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     test json serialization of form data
     - GET /fake/jsonFormData
     - 
     
     - parameter param: (form) field1 
     - parameter param2: (form) field2 

     - returns: RequestBuilder<Void> 
     */
    open class func testJsonFormDataWithRequestBuilder(param: String, param2: String) -> RequestBuilder<Void> {
        let path = "/fake/jsonFormData"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "param": param,
            "param2": param2
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
