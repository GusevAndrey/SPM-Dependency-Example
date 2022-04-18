import Foundation

#if os(iOS)
    import iOS_specific_target
#elseif os(tvOS)
    import TV_specific_target
#endif

public func printSome() {
    #if os(iOS)
        printForIOS()
    #elseif os(tvOS)
        printForTVOS()
    #endif
}
