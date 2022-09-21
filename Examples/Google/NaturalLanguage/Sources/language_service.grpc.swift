//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/language/v1/language_service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Provides text analysis operations such as sentiment analysis and entity
/// recognition.
///
/// Usage: instantiate `Google_Cloud_Language_V1_LanguageServiceClient`, then call methods of this protocol to make API calls.
internal protocol Google_Cloud_Language_V1_LanguageServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? { get }

  func analyzeSentiment(
    _ request: Google_Cloud_Language_V1_AnalyzeSentimentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeSentimentRequest, Google_Cloud_Language_V1_AnalyzeSentimentResponse>

  func analyzeEntities(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeEntitiesRequest, Google_Cloud_Language_V1_AnalyzeEntitiesResponse>

  func analyzeEntitySentiment(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>

  func analyzeSyntax(
    _ request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeSyntaxRequest, Google_Cloud_Language_V1_AnalyzeSyntaxResponse>

  func classifyText(
    _ request: Google_Cloud_Language_V1_ClassifyTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1_ClassifyTextRequest, Google_Cloud_Language_V1_ClassifyTextResponse>

  func annotateText(
    _ request: Google_Cloud_Language_V1_AnnotateTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1_AnnotateTextRequest, Google_Cloud_Language_V1_AnnotateTextResponse>
}

extension Google_Cloud_Language_V1_LanguageServiceClientProtocol {
  internal var serviceName: String {
    return "google.cloud.language.v1.LanguageService"
  }

  /// Analyzes the sentiment of the provided text.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeSentiment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func analyzeSentiment(
    _ request: Google_Cloud_Language_V1_AnalyzeSentimentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeSentimentRequest, Google_Cloud_Language_V1_AnalyzeSentimentResponse> {
    return self.makeUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSentiment.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeSentimentInterceptors() ?? []
    )
  }

  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and
  /// other properties.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeEntities.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func analyzeEntities(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeEntitiesRequest, Google_Cloud_Language_V1_AnalyzeEntitiesResponse> {
    return self.makeUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntities.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeEntitiesInterceptors() ?? []
    )
  }

  /// Finds entities, similar to
  /// [AnalyzeEntities][google.cloud.language.v1.LanguageService.AnalyzeEntities]
  /// in the text and analyzes sentiment associated with each entity and its
  /// mentions.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeEntitySentiment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func analyzeEntitySentiment(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse> {
    return self.makeUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntitySentiment.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeEntitySentimentInterceptors() ?? []
    )
  }

  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part of speech tags, dependency trees, and other
  /// properties.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeSyntax.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func analyzeSyntax(
    _ request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1_AnalyzeSyntaxRequest, Google_Cloud_Language_V1_AnalyzeSyntaxResponse> {
    return self.makeUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSyntax.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeSyntaxInterceptors() ?? []
    )
  }

  /// Classifies a document into categories.
  ///
  /// - Parameters:
  ///   - request: Request to send to ClassifyText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func classifyText(
    _ request: Google_Cloud_Language_V1_ClassifyTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1_ClassifyTextRequest, Google_Cloud_Language_V1_ClassifyTextResponse> {
    return self.makeUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.classifyText.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClassifyTextInterceptors() ?? []
    )
  }

  /// A convenience method that provides all the features that analyzeSentiment,
  /// analyzeEntities, and analyzeSyntax provide in one call.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnnotateText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func annotateText(
    _ request: Google_Cloud_Language_V1_AnnotateTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1_AnnotateTextRequest, Google_Cloud_Language_V1_AnnotateTextResponse> {
    return self.makeUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.annotateText.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnnotateTextInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Google_Cloud_Language_V1_LanguageServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Google_Cloud_Language_V1_LanguageServiceNIOClient")
internal final class Google_Cloud_Language_V1_LanguageServiceClient: Google_Cloud_Language_V1_LanguageServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the google.cloud.language.v1.LanguageService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct Google_Cloud_Language_V1_LanguageServiceNIOClient: Google_Cloud_Language_V1_LanguageServiceClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the google.cloud.language.v1.LanguageService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Provides text analysis operations such as sentiment analysis and entity
/// recognition.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol Google_Cloud_Language_V1_LanguageServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? { get }

  func makeAnalyzeSentimentCall(
    _ request: Google_Cloud_Language_V1_AnalyzeSentimentRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeSentimentRequest, Google_Cloud_Language_V1_AnalyzeSentimentResponse>

  func makeAnalyzeEntitiesCall(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeEntitiesRequest, Google_Cloud_Language_V1_AnalyzeEntitiesResponse>

  func makeAnalyzeEntitySentimentCall(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>

  func makeAnalyzeSyntaxCall(
    _ request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeSyntaxRequest, Google_Cloud_Language_V1_AnalyzeSyntaxResponse>

  func makeClassifyTextCall(
    _ request: Google_Cloud_Language_V1_ClassifyTextRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_ClassifyTextRequest, Google_Cloud_Language_V1_ClassifyTextResponse>

  func makeAnnotateTextCall(
    _ request: Google_Cloud_Language_V1_AnnotateTextRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnnotateTextRequest, Google_Cloud_Language_V1_AnnotateTextResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Google_Cloud_Language_V1_LanguageServiceAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return Google_Cloud_Language_V1_LanguageServiceClientMetadata.serviceDescriptor
  }

  internal var interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeAnalyzeSentimentCall(
    _ request: Google_Cloud_Language_V1_AnalyzeSentimentRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeSentimentRequest, Google_Cloud_Language_V1_AnalyzeSentimentResponse> {
    return self.makeAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSentiment.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeSentimentInterceptors() ?? []
    )
  }

  internal func makeAnalyzeEntitiesCall(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeEntitiesRequest, Google_Cloud_Language_V1_AnalyzeEntitiesResponse> {
    return self.makeAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntities.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeEntitiesInterceptors() ?? []
    )
  }

  internal func makeAnalyzeEntitySentimentCall(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse> {
    return self.makeAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntitySentiment.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeEntitySentimentInterceptors() ?? []
    )
  }

  internal func makeAnalyzeSyntaxCall(
    _ request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnalyzeSyntaxRequest, Google_Cloud_Language_V1_AnalyzeSyntaxResponse> {
    return self.makeAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSyntax.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeSyntaxInterceptors() ?? []
    )
  }

  internal func makeClassifyTextCall(
    _ request: Google_Cloud_Language_V1_ClassifyTextRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_ClassifyTextRequest, Google_Cloud_Language_V1_ClassifyTextResponse> {
    return self.makeAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.classifyText.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClassifyTextInterceptors() ?? []
    )
  }

  internal func makeAnnotateTextCall(
    _ request: Google_Cloud_Language_V1_AnnotateTextRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Google_Cloud_Language_V1_AnnotateTextRequest, Google_Cloud_Language_V1_AnnotateTextResponse> {
    return self.makeAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.annotateText.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnnotateTextInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Google_Cloud_Language_V1_LanguageServiceAsyncClientProtocol {
  internal func analyzeSentiment(
    _ request: Google_Cloud_Language_V1_AnalyzeSentimentRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Google_Cloud_Language_V1_AnalyzeSentimentResponse {
    return try await self.performAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSentiment.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeSentimentInterceptors() ?? []
    )
  }

  internal func analyzeEntities(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Google_Cloud_Language_V1_AnalyzeEntitiesResponse {
    return try await self.performAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntities.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeEntitiesInterceptors() ?? []
    )
  }

  internal func analyzeEntitySentiment(
    _ request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse {
    return try await self.performAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntitySentiment.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeEntitySentimentInterceptors() ?? []
    )
  }

  internal func analyzeSyntax(
    _ request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Google_Cloud_Language_V1_AnalyzeSyntaxResponse {
    return try await self.performAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSyntax.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnalyzeSyntaxInterceptors() ?? []
    )
  }

  internal func classifyText(
    _ request: Google_Cloud_Language_V1_ClassifyTextRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Google_Cloud_Language_V1_ClassifyTextResponse {
    return try await self.performAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.classifyText.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClassifyTextInterceptors() ?? []
    )
  }

  internal func annotateText(
    _ request: Google_Cloud_Language_V1_AnnotateTextRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Google_Cloud_Language_V1_AnnotateTextResponse {
    return try await self.performAsyncUnaryCall(
      path: Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.annotateText.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnnotateTextInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct Google_Cloud_Language_V1_LanguageServiceAsyncClient: Google_Cloud_Language_V1_LanguageServiceAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

internal protocol Google_Cloud_Language_V1_LanguageServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'analyzeSentiment'.
  func makeAnalyzeSentimentInterceptors() -> [ClientInterceptor<Google_Cloud_Language_V1_AnalyzeSentimentRequest, Google_Cloud_Language_V1_AnalyzeSentimentResponse>]

  /// - Returns: Interceptors to use when invoking 'analyzeEntities'.
  func makeAnalyzeEntitiesInterceptors() -> [ClientInterceptor<Google_Cloud_Language_V1_AnalyzeEntitiesRequest, Google_Cloud_Language_V1_AnalyzeEntitiesResponse>]

  /// - Returns: Interceptors to use when invoking 'analyzeEntitySentiment'.
  func makeAnalyzeEntitySentimentInterceptors() -> [ClientInterceptor<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>]

  /// - Returns: Interceptors to use when invoking 'analyzeSyntax'.
  func makeAnalyzeSyntaxInterceptors() -> [ClientInterceptor<Google_Cloud_Language_V1_AnalyzeSyntaxRequest, Google_Cloud_Language_V1_AnalyzeSyntaxResponse>]

  /// - Returns: Interceptors to use when invoking 'classifyText'.
  func makeClassifyTextInterceptors() -> [ClientInterceptor<Google_Cloud_Language_V1_ClassifyTextRequest, Google_Cloud_Language_V1_ClassifyTextResponse>]

  /// - Returns: Interceptors to use when invoking 'annotateText'.
  func makeAnnotateTextInterceptors() -> [ClientInterceptor<Google_Cloud_Language_V1_AnnotateTextRequest, Google_Cloud_Language_V1_AnnotateTextResponse>]
}

internal enum Google_Cloud_Language_V1_LanguageServiceClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LanguageService",
    fullName: "google.cloud.language.v1.LanguageService",
    methods: [
      Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSentiment,
      Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntities,
      Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeEntitySentiment,
      Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.analyzeSyntax,
      Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.classifyText,
      Google_Cloud_Language_V1_LanguageServiceClientMetadata.Methods.annotateText,
    ]
  )

  internal enum Methods {
    internal static let analyzeSentiment = GRPCMethodDescriptor(
      name: "AnalyzeSentiment",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeSentiment",
      type: GRPCCallType.unary
    )

    internal static let analyzeEntities = GRPCMethodDescriptor(
      name: "AnalyzeEntities",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeEntities",
      type: GRPCCallType.unary
    )

    internal static let analyzeEntitySentiment = GRPCMethodDescriptor(
      name: "AnalyzeEntitySentiment",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeEntitySentiment",
      type: GRPCCallType.unary
    )

    internal static let analyzeSyntax = GRPCMethodDescriptor(
      name: "AnalyzeSyntax",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeSyntax",
      type: GRPCCallType.unary
    )

    internal static let classifyText = GRPCMethodDescriptor(
      name: "ClassifyText",
      path: "/google.cloud.language.v1.LanguageService/ClassifyText",
      type: GRPCCallType.unary
    )

    internal static let annotateText = GRPCMethodDescriptor(
      name: "AnnotateText",
      path: "/google.cloud.language.v1.LanguageService/AnnotateText",
      type: GRPCCallType.unary
    )
  }
}

/// Provides text analysis operations such as sentiment analysis and entity
/// recognition.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Google_Cloud_Language_V1_LanguageServiceProvider: CallHandlerProvider {
  var interceptors: Google_Cloud_Language_V1_LanguageServiceServerInterceptorFactoryProtocol? { get }

  /// Analyzes the sentiment of the provided text.
  func analyzeSentiment(request: Google_Cloud_Language_V1_AnalyzeSentimentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1_AnalyzeSentimentResponse>

  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and
  /// other properties.
  func analyzeEntities(request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1_AnalyzeEntitiesResponse>

  /// Finds entities, similar to
  /// [AnalyzeEntities][google.cloud.language.v1.LanguageService.AnalyzeEntities]
  /// in the text and analyzes sentiment associated with each entity and its
  /// mentions.
  func analyzeEntitySentiment(request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>

  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part of speech tags, dependency trees, and other
  /// properties.
  func analyzeSyntax(request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1_AnalyzeSyntaxResponse>

  /// Classifies a document into categories.
  func classifyText(request: Google_Cloud_Language_V1_ClassifyTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1_ClassifyTextResponse>

  /// A convenience method that provides all the features that analyzeSentiment,
  /// analyzeEntities, and analyzeSyntax provide in one call.
  func annotateText(request: Google_Cloud_Language_V1_AnnotateTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1_AnnotateTextResponse>
}

extension Google_Cloud_Language_V1_LanguageServiceProvider {
  internal var serviceName: Substring {
    return Google_Cloud_Language_V1_LanguageServiceServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "AnalyzeSentiment":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeSentimentRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeSentimentResponse>(),
        interceptors: self.interceptors?.makeAnalyzeSentimentInterceptors() ?? [],
        userFunction: self.analyzeSentiment(request:context:)
      )

    case "AnalyzeEntities":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeEntitiesRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeEntitiesResponse>(),
        interceptors: self.interceptors?.makeAnalyzeEntitiesInterceptors() ?? [],
        userFunction: self.analyzeEntities(request:context:)
      )

    case "AnalyzeEntitySentiment":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>(),
        interceptors: self.interceptors?.makeAnalyzeEntitySentimentInterceptors() ?? [],
        userFunction: self.analyzeEntitySentiment(request:context:)
      )

    case "AnalyzeSyntax":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeSyntaxRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeSyntaxResponse>(),
        interceptors: self.interceptors?.makeAnalyzeSyntaxInterceptors() ?? [],
        userFunction: self.analyzeSyntax(request:context:)
      )

    case "ClassifyText":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_ClassifyTextRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_ClassifyTextResponse>(),
        interceptors: self.interceptors?.makeClassifyTextInterceptors() ?? [],
        userFunction: self.classifyText(request:context:)
      )

    case "AnnotateText":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnnotateTextRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnnotateTextResponse>(),
        interceptors: self.interceptors?.makeAnnotateTextInterceptors() ?? [],
        userFunction: self.annotateText(request:context:)
      )

    default:
      return nil
    }
  }
}

#if compiler(>=5.6)

/// Provides text analysis operations such as sentiment analysis and entity
/// recognition.
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol Google_Cloud_Language_V1_LanguageServiceAsyncProvider: CallHandlerProvider {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Google_Cloud_Language_V1_LanguageServiceServerInterceptorFactoryProtocol? { get }

  /// Analyzes the sentiment of the provided text.
  @Sendable func analyzeSentiment(
    request: Google_Cloud_Language_V1_AnalyzeSentimentRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Google_Cloud_Language_V1_AnalyzeSentimentResponse

  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and
  /// other properties.
  @Sendable func analyzeEntities(
    request: Google_Cloud_Language_V1_AnalyzeEntitiesRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Google_Cloud_Language_V1_AnalyzeEntitiesResponse

  /// Finds entities, similar to
  /// [AnalyzeEntities][google.cloud.language.v1.LanguageService.AnalyzeEntities]
  /// in the text and analyzes sentiment associated with each entity and its
  /// mentions.
  @Sendable func analyzeEntitySentiment(
    request: Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse

  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part of speech tags, dependency trees, and other
  /// properties.
  @Sendable func analyzeSyntax(
    request: Google_Cloud_Language_V1_AnalyzeSyntaxRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Google_Cloud_Language_V1_AnalyzeSyntaxResponse

  /// Classifies a document into categories.
  @Sendable func classifyText(
    request: Google_Cloud_Language_V1_ClassifyTextRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Google_Cloud_Language_V1_ClassifyTextResponse

  /// A convenience method that provides all the features that analyzeSentiment,
  /// analyzeEntities, and analyzeSyntax provide in one call.
  @Sendable func annotateText(
    request: Google_Cloud_Language_V1_AnnotateTextRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Google_Cloud_Language_V1_AnnotateTextResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Google_Cloud_Language_V1_LanguageServiceAsyncProvider {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return Google_Cloud_Language_V1_LanguageServiceServerMetadata.serviceDescriptor
  }

  internal var serviceName: Substring {
    return Google_Cloud_Language_V1_LanguageServiceServerMetadata.serviceDescriptor.fullName[...]
  }

  internal var interceptors: Google_Cloud_Language_V1_LanguageServiceServerInterceptorFactoryProtocol? {
    return nil
  }

  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "AnalyzeSentiment":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeSentimentRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeSentimentResponse>(),
        interceptors: self.interceptors?.makeAnalyzeSentimentInterceptors() ?? [],
        wrapping: self.analyzeSentiment(request:context:)
      )

    case "AnalyzeEntities":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeEntitiesRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeEntitiesResponse>(),
        interceptors: self.interceptors?.makeAnalyzeEntitiesInterceptors() ?? [],
        wrapping: self.analyzeEntities(request:context:)
      )

    case "AnalyzeEntitySentiment":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>(),
        interceptors: self.interceptors?.makeAnalyzeEntitySentimentInterceptors() ?? [],
        wrapping: self.analyzeEntitySentiment(request:context:)
      )

    case "AnalyzeSyntax":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnalyzeSyntaxRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnalyzeSyntaxResponse>(),
        interceptors: self.interceptors?.makeAnalyzeSyntaxInterceptors() ?? [],
        wrapping: self.analyzeSyntax(request:context:)
      )

    case "ClassifyText":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_ClassifyTextRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_ClassifyTextResponse>(),
        interceptors: self.interceptors?.makeClassifyTextInterceptors() ?? [],
        wrapping: self.classifyText(request:context:)
      )

    case "AnnotateText":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Google_Cloud_Language_V1_AnnotateTextRequest>(),
        responseSerializer: ProtobufSerializer<Google_Cloud_Language_V1_AnnotateTextResponse>(),
        interceptors: self.interceptors?.makeAnnotateTextInterceptors() ?? [],
        wrapping: self.annotateText(request:context:)
      )

    default:
      return nil
    }
  }
}

#endif // compiler(>=5.6)

internal protocol Google_Cloud_Language_V1_LanguageServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'analyzeSentiment'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAnalyzeSentimentInterceptors() -> [ServerInterceptor<Google_Cloud_Language_V1_AnalyzeSentimentRequest, Google_Cloud_Language_V1_AnalyzeSentimentResponse>]

  /// - Returns: Interceptors to use when handling 'analyzeEntities'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAnalyzeEntitiesInterceptors() -> [ServerInterceptor<Google_Cloud_Language_V1_AnalyzeEntitiesRequest, Google_Cloud_Language_V1_AnalyzeEntitiesResponse>]

  /// - Returns: Interceptors to use when handling 'analyzeEntitySentiment'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAnalyzeEntitySentimentInterceptors() -> [ServerInterceptor<Google_Cloud_Language_V1_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1_AnalyzeEntitySentimentResponse>]

  /// - Returns: Interceptors to use when handling 'analyzeSyntax'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAnalyzeSyntaxInterceptors() -> [ServerInterceptor<Google_Cloud_Language_V1_AnalyzeSyntaxRequest, Google_Cloud_Language_V1_AnalyzeSyntaxResponse>]

  /// - Returns: Interceptors to use when handling 'classifyText'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeClassifyTextInterceptors() -> [ServerInterceptor<Google_Cloud_Language_V1_ClassifyTextRequest, Google_Cloud_Language_V1_ClassifyTextResponse>]

  /// - Returns: Interceptors to use when handling 'annotateText'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAnnotateTextInterceptors() -> [ServerInterceptor<Google_Cloud_Language_V1_AnnotateTextRequest, Google_Cloud_Language_V1_AnnotateTextResponse>]
}

internal enum Google_Cloud_Language_V1_LanguageServiceServerMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LanguageService",
    fullName: "google.cloud.language.v1.LanguageService",
    methods: [
      Google_Cloud_Language_V1_LanguageServiceServerMetadata.Methods.analyzeSentiment,
      Google_Cloud_Language_V1_LanguageServiceServerMetadata.Methods.analyzeEntities,
      Google_Cloud_Language_V1_LanguageServiceServerMetadata.Methods.analyzeEntitySentiment,
      Google_Cloud_Language_V1_LanguageServiceServerMetadata.Methods.analyzeSyntax,
      Google_Cloud_Language_V1_LanguageServiceServerMetadata.Methods.classifyText,
      Google_Cloud_Language_V1_LanguageServiceServerMetadata.Methods.annotateText,
    ]
  )

  internal enum Methods {
    internal static let analyzeSentiment = GRPCMethodDescriptor(
      name: "AnalyzeSentiment",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeSentiment",
      type: GRPCCallType.unary
    )

    internal static let analyzeEntities = GRPCMethodDescriptor(
      name: "AnalyzeEntities",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeEntities",
      type: GRPCCallType.unary
    )

    internal static let analyzeEntitySentiment = GRPCMethodDescriptor(
      name: "AnalyzeEntitySentiment",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeEntitySentiment",
      type: GRPCCallType.unary
    )

    internal static let analyzeSyntax = GRPCMethodDescriptor(
      name: "AnalyzeSyntax",
      path: "/google.cloud.language.v1.LanguageService/AnalyzeSyntax",
      type: GRPCCallType.unary
    )

    internal static let classifyText = GRPCMethodDescriptor(
      name: "ClassifyText",
      path: "/google.cloud.language.v1.LanguageService/ClassifyText",
      type: GRPCCallType.unary
    )

    internal static let annotateText = GRPCMethodDescriptor(
      name: "AnnotateText",
      path: "/google.cloud.language.v1.LanguageService/AnnotateText",
      type: GRPCCallType.unary
    )
  }
}
