extension View {
  /// Execute JavaScript when a user leaves an input field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onBlur(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "blur", preform: action)
  }

  /// Execute JavaScript when an element is clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onClick(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "click", preform: action)
  }

  /// Execute JavaScript when the user right-clicks on an element with a context menu.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onContextmenu(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "contextmenu", preform: action)
  }

  /// Execute JavaScript when copying some text of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onCopy(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "copy", preform: action)
  }

  /// Execute JavaScript when cutting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onCut(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "cut", preform: action)
  }

  /// Execute JavaScript when an element is double-clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDblclick(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "dblclick", preform: action)
  }

  /// Execute JavaScript when an element is being dragged.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDrag(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "drag", preform: action)
  }

  /// Execute JavaScript when the user has finished dragging an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDragend(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "dragend", preform: action)
  }

  /// Execute JavaScript when a draggable element enters a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDragenter(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "dragenter", preform: action)
  }

  /// Execute JavaScript when an element is being dragged over a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDragover(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "dragover", preform: action)
  }

  /// Execute JavaScript when the user starts to drag an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDragstart(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "dragstart", preform: action)
  }

  /// Execute JavaScript when a draggable element is dropped in the element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDrop(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "drop", preform: action)
  }

  /// Execute JavaScript when an element gets focus.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onFocus(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "focus", preform: action)
  }

  /// Execute JavaScript when a user is pressing a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onKeydown(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "keydown", preform: action)
  }

  /// Execute JavaScript when a user presses a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onKeypress(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "keypress", preform: action)
  }

  /// Execute JavaScript when a user releases a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onKeyup(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "keyup", preform: action)
  }

  /// Execute JavaScript when pressing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onMousedown(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "mousedown", preform: action)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onMousemove(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "mousemove", preform: action)
  }

  /// Execute JavaScript when moving the mouse pointer out of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onMouseout(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "mouseout", preform: action)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onMouseover(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "mouseover", preform: action)
  }

  /// Execute JavaScript when releasing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onMouseup(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "mouseup", preform: action)
  }

  /// Execute JavaScript when pasting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onPaste(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "paste", preform: action)
  }

  /// Execute JavaScript when an element is being scrolled.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onScroll(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "scroll", preform: action)
  }

  /// Execute JavaScript when the user rolls the mouse wheel over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onWheel(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "wheel", preform: action)
  }

}

extension Body {
  /// Execute JavaScript when a page has started printing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onAfterprint(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "afterprint", preform: action)
  }

  /// Execute JavaScript when a page is about to be printed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onBeforeprint(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "beforeprint", preform: action)
  }

  /// Execute JavaScript when the page is about to be unloaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onBeforeunload(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "beforeunload", preform: action)
  }

  /// Execute JavaScript when the anchor part has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onHashchange(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "hashchange", preform: action)
  }

  public func onMessage(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "message", preform: action)
  }

  /// Execute JavaScript when the browser starts to work offline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onOffline(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "offline", preform: action)
  }

  /// Execute JavaScript when the browser starts to work online.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onOnline(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "online", preform: action)
  }

  /// Execute JavaScript when the user is navigating away from a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onPagehide(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "pagehide", preform: action)
  }

  /// Execute JavaScript when a user navigates to a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onPageshow(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "pageshow", preform: action)
  }

  public func onPopstate(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "popstate", preform: action)
  }

  /// Execute JavaScript when the browser window is resized.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onResize(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "resize", preform: action)
  }

  public func onStorage(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "storage", preform: action)
  }

  /// Execute JavaScript when a user unloads the document.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onUnload(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "unload", preform: action)
  }
}

extension Details {
  /// Execute JavaScript when a `<details>` element is opened or closed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onToggle(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "toggle", preform: action)
  }
}

extension Form {
  /// Execute JavaScript when a form is reset.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onReset(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "reset", preform: action)
  }

  /// Execute JavaScript when a form is submitted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onSubmit(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "submit", preform: action)
  }
}

extension Input {
  /// Execute JavaScript when an input field is invalid.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onInvalid(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "invalid", preform: action)
  }

  /// Execute JavaScript when submitting a search.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onSearch(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "search", preform: action)
  }
}

public protocol HasOnabort {}

extension Audio: HasOnabort {}
extension Embed: HasOnabort {}
extension Img: HasOnabort {}
extension Object: HasOnabort {}
extension Video: HasOnabort {}

extension View where Self: HasOnabort {
  /// Execute JavaScript if loading of a resource is aborted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onAbort(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "abort", preform: action)
  }
}

extension Track {
  /// Execute JavaScript when the cue changes in a `<track>` element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onCuechange(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "cuechange", preform: action)
  }
}

public protocol HasOncanplay {}

extension Audio: HasOncanplay {}
extension Embed: HasOncanplay {}
extension Object: HasOncanplay {}
extension Video: HasOncanplay {}

extension View where Self: HasOncanplay {
  /// Execute JavaScript when a resource is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onCanplay(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "canplay", preform: action)
  }
}

public protocol HasOncanplaythrough {}

extension Audio: HasOncanplaythrough {}
extension Video: HasOncanplaythrough {}

extension View where Self: HasOncanplaythrough {
  /// Execute JavaScript when a resource can be played all the way through, without stopping.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onCanplaythrough(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "canplaythrough", preform: action)
  }
}

public protocol HasOnchange {}

extension Input: HasOnchange {}
extension Select: HasOnchange {}
extension Textarea: HasOnchange {}

extension View where Self: HasOnchange {
  /// Execute JavaScript when a user changes the value of a form control.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onChange(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "change", preform: action)
  }
}

public protocol HasOndurationchange {}

extension Audio: HasOndurationchange {}
extension Video: HasOndurationchange {}

extension View where Self: HasOndurationchange {
  /// Execute JavaScript when the media is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onDurationchange(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "durationchange", preform: action)
  }
}

public protocol HasOnemptied {}

extension Audio: HasOnemptied {}
extension Video: HasOnemptied {}

extension View where Self: HasOnemptied {
  public func onEmptied(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "emptied", preform: action)
  }
}

public protocol HasOnended {}

extension Audio: HasOnended {}
extension Video: HasOnended {}

extension View where Self: HasOnended {
  /// Execute JavaScript when the media has stopped playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onEnded(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "ended", preform: action)
  }
}

public protocol HasOnerror {}

extension Audio: HasOnerror {}
extension Img: HasOnerror {}
extension Input: HasOnerror {} // TODO: type="image"
extension Object: HasOnerror {}
extension Link: HasOnerror {}
extension Script: HasOnerror {}
extension Video: HasOnerror {}

extension View where Self: HasOnerror {
  public func onError(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "error", preform: action)
  }
}

public protocol HasOninput {}

extension Input: HasOninput {}
extension Textarea: HasOninput {}

extension View where Self: HasOninput {
  /// Execute JavaScript when a user writes something in a text field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onInput(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "input", preform: action)
  }
}

public protocol HasOnload {}

extension Body: HasOnload {}
extension Iframe: HasOnload {}
extension Img: HasOnload {}
extension Input: HasOnload {} // TODO: type="image"
extension Link: HasOnload {}
extension Script: HasOnload {}
extension Style: HasOnload {}

extension View where Self: HasOnload {
  /// Execute JavaScript immediately after a page has been loaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onLoad(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "load", preform: action)
  }
}

public protocol HasOnloadeddata {}

extension Audio: HasOnloadeddata {}
extension Video: HasOnloadeddata {}

extension View where Self: HasOnloadeddata {
  public func onLoadeddata(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "loadeddata", preform: action)
  }
}

public protocol HasOnloadedmetadata {}

extension Audio: HasOnloadedmetadata {}
extension Video: HasOnloadedmetadata {}

extension View where Self: HasOnloadedmetadata {
  public func onLoadedmetadata(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "loadedmetadata", preform: action)
  }
}

public protocol HasOnloadstart {}

extension Audio: HasOnloadstart {}
extension Video: HasOnloadstart {}

extension View where Self: HasOnloadstart {
  public func onLoadstart(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "loadstart", preform: action)
  }
}

public protocol HasOnpause {}

extension Audio: HasOnpause {}
extension Video: HasOnpause {}

extension View where Self: HasOnpause {
  /// Execute JavaScript when media has been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onPause(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "pause", preform: action)
  }
}

public protocol HasOnplay {}

extension Audio: HasOnplay {}
extension Video: HasOnplay {}

extension View where Self: HasOnplay {
  /// Execute JavaScript when media has been played.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onPlay(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "play", preform: action)
  }
}

public protocol HasOnplaying {}

extension Audio: HasOnplaying {}
extension Video: HasOnplaying {}

extension View where Self: HasOnplaying {
  /// Execute JavaScript when media is ready to start after having been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onPlaying(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "playing", preform: action)
  }
}

public protocol HasOnprogress {}

extension Audio: HasOnprogress {}
extension Video: HasOnprogress {}

extension View where Self: HasOnprogress {
  /// Execute JavaScript when media is downloading.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onProgress(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "progress", preform: action)
  }
}

public protocol HasOnratechange {}

extension Audio: HasOnratechange {}
extension Video: HasOnratechange {}

extension View where Self: HasOnratechange {
  /// Execute JavaScript when the playing speed of media is changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onRatechange(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "ratechange", preform: action)
  }
}

public protocol HasOnseeked {}

extension Audio: HasOnseeked {}
extension Video: HasOnseeked {}

extension View where Self: HasOnseeked {
  /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onSeeked(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "seeked", preform: action)
  }
}

public protocol HasOnseeking {}

extension Audio: HasOnseeking {}
extension Video: HasOnseeking {}

extension View where Self: HasOnseeking {
  /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onSeeking(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "seeking", preform: action)
  }
}

public protocol HasOnselect {}

extension Input: HasOnselect {}
extension Textarea: HasOnselect {}

extension View where Self: HasOnselect {
  /// Execute JavaScript when some text has been selected.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onSelect(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "select", preform: action)
  }
}

public protocol HasOnstalled {}

extension Audio: HasOnstalled {}
extension Video: HasOnstalled {}

extension View where Self: HasOnstalled {
  /// Execute JavaScript when the browser is trying to get media data, but data is not available.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onStalled(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "stalled", preform: action)
  }
}

public protocol HasOnsuspend {}

extension Audio: HasOnsuspend {}
extension Video: HasOnsuspend {}

extension View where Self: HasOnsuspend {
  /// Execute JavaScript when the browser is intentionally not getting media data.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onSuspend(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "suspend", preform: action)
  }
}

public protocol HasOntimeupdate {}

extension Audio: HasOntimeupdate {}
extension Video: HasOntimeupdate {}

extension View where Self: HasOntimeupdate {
  /// Execute JavaScript when the current playback position has changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onTimeupdate(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "timeupdate", preform: action)
  }
}

public protocol HasOnvolumechange {}

extension Audio: HasOnvolumechange {}
extension Video: HasOnvolumechange {}

extension View where Self: HasOnvolumechange {
  /// Execute JavaScript when the volume of a video has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onVolumechange(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "volumechange", preform: action)
  }
}

public protocol HasOnwaiting {}

extension Audio: HasOnwaiting {}
extension Video: HasOnwaiting {}

extension View where Self: HasOnwaiting {
  /// Execute JavaScript when the media stops because it needs to buffer the next frame.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onWaiting(preform action: @escaping EventListenerAction) -> some View {
    return onEvent(name: "waiting", preform: action)
  }
}
