extension View {
  /// Execute JavaScript when a user leaves an input field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsBlur(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "blur", preform: action)
  }

  /// Execute JavaScript when an element is clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsClick(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "click", preform: action)
  }

  /// Execute JavaScript when the user right-clicks on an element with a context menu.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsContextmenu(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "contextmenu", preform: action)
  }

  /// Execute JavaScript when copying some text of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsCopy(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "copy", preform: action)
  }

  /// Execute JavaScript when cutting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsCut(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "cut", preform: action)
  }

  /// Execute JavaScript when an element is double-clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDblclick(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "dblclick", preform: action)
  }

  /// Execute JavaScript when an element is being dragged.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDrag(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "drag", preform: action)
  }

  /// Execute JavaScript when the user has finished dragging an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDragend(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "dragend", preform: action)
  }

  /// Execute JavaScript when a draggable element enters a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDragenter(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "dragenter", preform: action)
  }

  /// Execute JavaScript when an element is being dragged over a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDragover(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "dragover", preform: action)
  }

  /// Execute JavaScript when the user starts to drag an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDragstart(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "dragstart", preform: action)
  }

  /// Execute JavaScript when a draggable element is dropped in the element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDrop(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "drop", preform: action)
  }

  /// Execute JavaScript when an element gets focus.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsFocus(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "focus", preform: action)
  }

  /// Execute JavaScript when a user is pressing a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsKeydown(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "keydown", preform: action)
  }

  /// Execute JavaScript when a user presses a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsKeypress(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "keypress", preform: action)
  }

  /// Execute JavaScript when a user releases a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsKeyup(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "keyup", preform: action)
  }

  /// Execute JavaScript when pressing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsMousedown(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "mousedown", preform: action)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsMousemove(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "mousemove", preform: action)
  }

  /// Execute JavaScript when moving the mouse pointer out of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsMouseout(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "mouseout", preform: action)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsMouseover(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "mouseover", preform: action)
  }

  /// Execute JavaScript when releasing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsMouseup(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "mouseup", preform: action)
  }

  /// Execute JavaScript when pasting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsPaste(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "paste", preform: action)
  }

  /// Execute JavaScript when an element is being scrolled.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsScroll(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "scroll", preform: action)
  }

  /// Execute JavaScript when the user rolls the mouse wheel over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsWheel(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "wheel", preform: action)
  }

}

extension HtmlBody {
  /// Execute JavaScript when a page has started printing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsAfterprint(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "afterprint", preform: action)
  }

  /// Execute JavaScript when a page is about to be printed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsBeforeprint(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "beforeprint", preform: action)
  }

  /// Execute JavaScript when the page is about to be unloaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsBeforeunload(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "beforeunload", preform: action)
  }

  /// Execute JavaScript when the anchor part has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsHashchange(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "hashchange", preform: action)
  }

  public func jsMessage(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "message", preform: action)
  }

  /// Execute JavaScript when the browser starts to work offline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsOffline(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "offline", preform: action)
  }

  /// Execute JavaScript when the browser starts to work jsline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsOnline(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "online", preform: action)
  }

  /// Execute JavaScript when the user is navigating away from a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsPagehide(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "pagehide", preform: action)
  }

  /// Execute JavaScript when a user navigates to a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsPageshow(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "pageshow", preform: action)
  }

  public func jsPopstate(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "popstate", preform: action)
  }

  /// Execute JavaScript when the browser window is resized.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsResize(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "resize", preform: action)
  }

  public func jsStorage(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "storage", preform: action)
  }

  /// Execute JavaScript when a user unloads the document.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsUnload(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "unload", preform: action)
  }
}

extension HtmlDetails {
  /// Execute JavaScript when a `<details>` element is opened or closed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsToggle(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "toggle", preform: action)
  }
}

extension HtmlForm {
  /// Execute JavaScript when a form is reset.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsReset(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "reset", preform: action)
  }

  /// Execute JavaScript when a form is submitted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsSubmit(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "submit", preform: action)
  }
}

extension HtmlInput {
  /// Execute JavaScript when an input field is invalid.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsInvalid(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "invalid", preform: action)
  }

  /// Execute JavaScript when submitting a search.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsSearch(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "search", preform: action)
  }
}

public protocol HasOnabort {}

extension HtmlAudio: HasOnabort {}
extension HtmlEmbed: HasOnabort {}
extension HtmlImg: HasOnabort {}
extension HtmlObject: HasOnabort {}
extension HtmlVideo: HasOnabort {}

extension View where Self: HasOnabort {
  /// Execute JavaScript if loading of a resource is aborted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsAbort(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "abort", preform: action)
  }
}

extension HtmlTrack {
  /// Execute JavaScript when the cue changes in a `<track>` element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsCuechange(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "cuechange", preform: action)
  }
}

public protocol HasOncanplay {}

extension HtmlAudio: HasOncanplay {}
extension HtmlEmbed: HasOncanplay {}
extension HtmlObject: HasOncanplay {}
extension HtmlVideo: HasOncanplay {}

extension View where Self: HasOncanplay {
  /// Execute JavaScript when a resource is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsCanplay(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "canplay", preform: action)
  }
}

public protocol HasOncanplaythrough {}

extension HtmlAudio: HasOncanplaythrough {}
extension HtmlVideo: HasOncanplaythrough {}

extension View where Self: HasOncanplaythrough {
  /// Execute JavaScript when a resource can be played all the way through, without stopping.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsCanplaythrough(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "canplaythrough", preform: action)
  }
}

public protocol HasOnchange {}

extension HtmlInput: HasOnchange {}
extension HtmlSelect: HasOnchange {}
extension HtmlTextarea: HasOnchange {}

extension View where Self: HasOnchange {
  /// Execute JavaScript when a user changes the value of a form control.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsChange(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "change", preform: action)
  }
}

public protocol HasOndurationchange {}

extension HtmlAudio: HasOndurationchange {}
extension HtmlVideo: HasOndurationchange {}

extension View where Self: HasOndurationchange {
  /// Execute JavaScript when the media is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsDurationchange(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "durationchange", preform: action)
  }
}

public protocol HasOnemptied {}

extension HtmlAudio: HasOnemptied {}
extension HtmlVideo: HasOnemptied {}

extension View where Self: HasOnemptied {
  public func jsEmptied(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "emptied", preform: action)
  }
}

public protocol HasOnended {}

extension HtmlAudio: HasOnended {}
extension HtmlVideo: HasOnended {}

extension View where Self: HasOnended {
  /// Execute JavaScript when the media has stopped playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsEnded(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "ended", preform: action)
  }
}

public protocol HasOnerror {}

extension HtmlAudio: HasOnerror {}
extension HtmlImg: HasOnerror {}
extension HtmlInput: HasOnerror {} // TODO: type="image"
extension HtmlObject: HasOnerror {}
extension HtmlLink: HasOnerror {}
extension HtmlScript: HasOnerror {}
extension HtmlVideo: HasOnerror {}

extension View where Self: HasOnerror {
  public func jsError(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "error", preform: action)
  }
}

public protocol HasOninput {}

extension HtmlInput: HasOninput {}
extension HtmlTextarea: HasOninput {}

extension View where Self: HasOninput {
  /// Execute JavaScript when a user writes something in a text field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsInput(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "input", preform: action)
  }
}

public protocol HasOnload {}

extension HtmlBody: HasOnload {}
extension HtmlIframe: HasOnload {}
extension HtmlImg: HasOnload {}
extension HtmlInput: HasOnload {} // TODO: type="image"
extension HtmlLink: HasOnload {}
extension HtmlScript: HasOnload {}
extension HtmlStyle: HasOnload {}

extension View where Self: HasOnload {
  /// Execute JavaScript immediately after a page has been loaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsLoad(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "load", preform: action)
  }
}

public protocol HasOnloadeddata {}

extension HtmlAudio: HasOnloadeddata {}
extension HtmlVideo: HasOnloadeddata {}

extension View where Self: HasOnloadeddata {
  public func jsLoadeddata(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "loadeddata", preform: action)
  }
}

public protocol HasOnloadedmetadata {}

extension HtmlAudio: HasOnloadedmetadata {}
extension HtmlVideo: HasOnloadedmetadata {}

extension View where Self: HasOnloadedmetadata {
  public func jsLoadedmetadata(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "loadedmetadata", preform: action)
  }
}

public protocol HasOnloadstart {}

extension HtmlAudio: HasOnloadstart {}
extension HtmlVideo: HasOnloadstart {}

extension View where Self: HasOnloadstart {
  public func jsLoadstart(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "loadstart", preform: action)
  }
}

public protocol HasOnpause {}

extension HtmlAudio: HasOnpause {}
extension HtmlVideo: HasOnpause {}

extension View where Self: HasOnpause {
  /// Execute JavaScript when media has been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsPause(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "pause", preform: action)
  }
}

public protocol HasOnplay {}

extension HtmlAudio: HasOnplay {}
extension HtmlVideo: HasOnplay {}

extension View where Self: HasOnplay {
  /// Execute JavaScript when media has been played.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsPlay(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "play", preform: action)
  }
}

public protocol HasOnplaying {}

extension HtmlAudio: HasOnplaying {}
extension HtmlVideo: HasOnplaying {}

extension View where Self: HasOnplaying {
  /// Execute JavaScript when media is ready to start after having been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsPlaying(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "playing", preform: action)
  }
}

public protocol HasOnprogress {}

extension HtmlAudio: HasOnprogress {}
extension HtmlVideo: HasOnprogress {}

extension View where Self: HasOnprogress {
  /// Execute JavaScript when media is downloading.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsProgress(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "progress", preform: action)
  }
}

public protocol HasOnratechange {}

extension HtmlAudio: HasOnratechange {}
extension HtmlVideo: HasOnratechange {}

extension View where Self: HasOnratechange {
  /// Execute JavaScript when the playing speed of media is changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsRatechange(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "ratechange", preform: action)
  }
}

public protocol HasOnseeked {}

extension HtmlAudio: HasOnseeked {}
extension HtmlVideo: HasOnseeked {}

extension View where Self: HasOnseeked {
  /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsSeeked(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "seeked", preform: action)
  }
}

public protocol HasOnseeking {}

extension HtmlAudio: HasOnseeking {}
extension HtmlVideo: HasOnseeking {}

extension View where Self: HasOnseeking {
  /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsSeeking(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "seeking", preform: action)
  }
}

public protocol HasOnselect {}

extension HtmlInput: HasOnselect {}
extension HtmlTextarea: HasOnselect {}

extension View where Self: HasOnselect {
  /// Execute JavaScript when some text has been selected.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsSelect(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "select", preform: action)
  }
}

public protocol HasOnstalled {}

extension HtmlAudio: HasOnstalled {}
extension HtmlVideo: HasOnstalled {}

extension View where Self: HasOnstalled {
  /// Execute JavaScript when the browser is trying to get media data, but data is not available.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsStalled(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "stalled", preform: action)
  }
}

public protocol HasOnsuspend {}

extension HtmlAudio: HasOnsuspend {}
extension HtmlVideo: HasOnsuspend {}

extension View where Self: HasOnsuspend {
  /// Execute JavaScript when the browser is intentionally not getting media data.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsSuspend(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "suspend", preform: action)
  }
}

public protocol HasOntimeupdate {}

extension HtmlAudio: HasOntimeupdate {}
extension HtmlVideo: HasOntimeupdate {}

extension View where Self: HasOntimeupdate {
  /// Execute JavaScript when the current playback position has changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsTimeupdate(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "timeupdate", preform: action)
  }
}

public protocol HasOnvolumechange {}

extension HtmlAudio: HasOnvolumechange {}
extension HtmlVideo: HasOnvolumechange {}

extension View where Self: HasOnvolumechange {
  /// Execute JavaScript when the volume of a video has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsVolumechange(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "volumechange", preform: action)
  }
}

public protocol HasOnwaiting {}

extension HtmlAudio: HasOnwaiting {}
extension HtmlVideo: HasOnwaiting {}

extension View where Self: HasOnwaiting {
  /// Execute JavaScript when the media stops because it needs to buffer the next frame.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func jsWaiting(preform action: @escaping EventListenerAction) -> ModifiedContent<Self, JSEventListenerModifier<Self>> {
    return jsEvent(name: "waiting", preform: action)
  }
}
