
import Foundation

final class StreamServicesFailFirstSuccessAfterImpl: StreamServices {

    fileprivate var calls = 0
    
    func filterByTracking(_ term: String?, completion: TweetErrorCompletion?) {
        
        if calls == 0 {
            
            let error = NSError(domain: "", code:0, userInfo: nil)
            
            completion?(nil, error)
            
        } else {
            
            completion?(tweet(), nil)
            
        }
        
        calls = calls + 1
        
    }
    
    fileprivate func tweet() -> Tweet {
        
        let instance = Tweet(id:1)
        
        instance.name = "name"
        instance.text = "text"
        instance.screen_name = "screen_name"
        instance.timestamp_ms = "134567890"
        
        return instance
        
    }
    
}
