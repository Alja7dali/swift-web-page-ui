public protocol IsAudio {}
extension HtmlAudio: IsAudio {}

public protocol ChildOfAudio {}
extension HtmlSource: ChildOfAudio where Parent: IsAudio {}
extension HtmlTrack: ChildOfAudio {}
extension HtmlScript: ChildOfAudio {}
extension HtmlNoscript: ChildOfAudio {}
extension HtmlTemplate: ChildOfAudio {}
extension HtmlComment: ChildOfAudio {}

extension Array: ChildOfAudio where Element: ChildOfAudio {}
extension Either: ChildOfAudio where Left: ChildOfAudio, Right: ChildOfAudio {}
extension EmptyView: ChildOfAudio {}
extension AnyView: ChildOfAudio {}
extension Optional: ChildOfAudio where Wrapped: ChildOfAudio {}

/// ---------------------- ///

public protocol VariationOfCaption {}
extension HtmlCaption: VariationOfCaption {}

extension Either: VariationOfCaption where Left: VariationOfCaption, Right: VariationOfCaption {}
extension EmptyView: VariationOfCaption {}
extension AnyView: VariationOfCaption {}
extension Optional: VariationOfCaption where Wrapped: VariationOfCaption {}

/// ---------------------- ///

public protocol ChildOfColgroup {}
extension HtmlCol: ChildOfColgroup {}
extension HtmlScript: ChildOfColgroup {}
extension HtmlNoscript: ChildOfColgroup {}
extension HtmlTemplate: ChildOfColgroup {}
extension HtmlComment: ChildOfColgroup {}

extension Array: ChildOfColgroup where Element: ChildOfColgroup {}
extension Either: ChildOfColgroup where Left: ChildOfColgroup, Right: ChildOfColgroup {}
extension EmptyView: ChildOfColgroup {}
extension AnyView: ChildOfColgroup {}
extension Optional: ChildOfColgroup where Wrapped: ChildOfColgroup {}

/// ---------------------- ///

public protocol VariationOfColgroup {}
extension HtmlColgroup: VariationOfColgroup {}

extension Either: VariationOfColgroup where Left: VariationOfColgroup, Right: VariationOfColgroup {}
extension EmptyView: VariationOfColgroup {}
extension AnyView: VariationOfColgroup {}
extension Optional: VariationOfColgroup where Wrapped: VariationOfColgroup {}

/// ---------------------- ///

public protocol ChildOfDetails {}

extension HtmlPlaintext: ChildOfDetails {}
extension HtmlRawtext:  ChildOfDetails {}
extension HtmlComment: ChildOfDetails {}

extension Array: ChildOfDetails where Element: ChildOfDetails {}
extension Either: ChildOfDetails where Left: ChildOfDetails, Right: ChildOfDetails {}
extension EmptyView: ChildOfDetails {}
extension AnyView: ChildOfDetails {}
extension Optional: ChildOfDetails where Wrapped: ChildOfDetails {}

extension HtmlA: ChildOfDetails {}
extension HtmlAbbr: ChildOfDetails {}
extension HtmlAddress: ChildOfDetails {}
extension HtmlArticle: ChildOfDetails {}
extension HtmlAside: ChildOfDetails {}
extension HtmlAudio: ChildOfDetails {}
extension HtmlB: ChildOfDetails {}
extension HtmlBdi: ChildOfDetails {}
extension HtmlBdo: ChildOfDetails {}
extension HtmlBlockquote: ChildOfDetails {}
extension HtmlBr: ChildOfDetails {}
extension HtmlButton: ChildOfDetails {}
extension HtmlCanvas: ChildOfDetails {}
extension HtmlCite: ChildOfDetails {}
extension HtmlCode: ChildOfDetails {}
extension HtmlDel: ChildOfDetails {}
extension HtmlDetails: ChildOfDetails {}
extension HtmlDfn: ChildOfDetails {}
extension HtmlDiv: ChildOfDetails {}
extension HtmlDl: ChildOfDetails {}
extension HtmlEm: ChildOfDetails {}
extension HtmlFieldset: ChildOfDetails {}
extension HtmlFigure: ChildOfDetails {}
extension HtmlFooter: ChildOfDetails {}
extension HtmlForm: ChildOfDetails {}
extension HtmlH1: ChildOfDetails {}
extension HtmlH2: ChildOfDetails {}
extension HtmlH3: ChildOfDetails {}
extension HtmlH4: ChildOfDetails {}
extension HtmlH5: ChildOfDetails {}
extension HtmlH6: ChildOfDetails {}
extension HtmlHeader: ChildOfDetails {}
extension HtmlHr: ChildOfDetails {}
extension HtmlI: ChildOfDetails {}
extension HtmlIframe: ChildOfDetails {}
extension HtmlImg: ChildOfDetails {}
extension HtmlInput: ChildOfDetails {}
extension HtmlIns: ChildOfDetails {}
extension HtmlKbd: ChildOfDetails {}
extension HtmlLabel: ChildOfDetails {}
extension HtmlMain: ChildOfDetails {}
extension HtmlMap: ChildOfDetails {}
extension HtmlMark: ChildOfDetails {}
extension HtmlMeter: ChildOfDetails {}
extension HtmlNav: ChildOfDetails {}
extension HtmlNoscript: ChildOfDetails {}
extension HtmlObject: ChildOfDetails {}
extension HtmlOl: ChildOfDetails {}
extension HtmlOptgroup: ChildOfDetails {}
extension HtmlOutput: ChildOfDetails {}
extension HtmlP: ChildOfDetails {}
extension HtmlPicture: ChildOfDetails {}
extension HtmlPre: ChildOfDetails {}
extension HtmlProgress: ChildOfDetails {}
extension HtmlQ: ChildOfDetails {}
extension HtmlS: ChildOfDetails {}
extension HtmlSamp: ChildOfDetails {}
extension HtmlScript: ChildOfDetails {}
extension HtmlSection: ChildOfDetails {}
extension HtmlSelect: ChildOfDetails {}
extension HtmlSmall: ChildOfDetails {}
extension HtmlSpan: ChildOfDetails {}
extension HtmlStrong: ChildOfDetails {}
extension HtmlSub: ChildOfDetails {}
extension HtmlSup: ChildOfDetails {}
extension HtmlSvg: ChildOfDetails {}
extension HtmlTable: ChildOfDetails {}
extension HtmlTemplate: ChildOfDetails {}
extension HtmlTextarea: ChildOfDetails {}
extension HtmlTime: ChildOfDetails {}
extension HtmlU: ChildOfDetails {}
extension HtmlUl: ChildOfDetails {}
extension HtmlVar: ChildOfDetails {}
extension HtmlVideo: ChildOfDetails {}

public protocol VariationOfSummary {}
extension HtmlSummary: VariationOfSummary {}

extension Either: VariationOfSummary where Left: VariationOfSummary, Right: VariationOfSummary {}
extension EmptyView: VariationOfSummary {}
extension AnyView: VariationOfSummary {}
extension Optional: VariationOfSummary where Wrapped: VariationOfSummary {}

/// ---------------------- ///

/// FIXME: Dl must contains (signle Dt followed by multiple Dd) repeatedly..
public protocol ChildOfDl {}
extension HtmlDd: ChildOfDl {}
extension HtmlDt: ChildOfDl {}
extension HtmlScript: ChildOfDl {}
extension HtmlNoscript: ChildOfDl {}
extension HtmlTemplate: ChildOfDl {}
extension HtmlComment: ChildOfDl {}

extension Array: ChildOfDl where Element: ChildOfDl {}
extension Either: ChildOfDl where Left: ChildOfDl, Right: ChildOfDl {}
extension EmptyView: ChildOfDl {}
extension AnyView: ChildOfDl {}
extension Optional: ChildOfDl where Wrapped: ChildOfDl {}

/// ---------------------- ///

public protocol ChildOfFieldset {}

extension HtmlPlaintext: ChildOfFieldset {}
extension HtmlRawtext:  ChildOfFieldset {}
extension HtmlComment: ChildOfFieldset {}

extension Array: ChildOfFieldset where Element: ChildOfFieldset {}
extension Either: ChildOfFieldset where Left: ChildOfFieldset, Right: ChildOfFieldset {}
extension EmptyView: ChildOfFieldset {}
extension AnyView: ChildOfFieldset {}
extension Optional: ChildOfFieldset where Wrapped: ChildOfFieldset {}

extension HtmlA: ChildOfFieldset {}
extension HtmlAbbr: ChildOfFieldset {}
extension HtmlAddress: ChildOfFieldset {}
extension HtmlArticle: ChildOfFieldset {}
extension HtmlAside: ChildOfFieldset {}
extension HtmlAudio: ChildOfFieldset {}
extension HtmlB: ChildOfFieldset {}
extension HtmlBdi: ChildOfFieldset {}
extension HtmlBdo: ChildOfFieldset {}
extension HtmlBlockquote: ChildOfFieldset {}
extension HtmlBr: ChildOfFieldset {}
extension HtmlButton: ChildOfFieldset {}
extension HtmlCanvas: ChildOfFieldset {}
extension HtmlCite: ChildOfFieldset {}
extension HtmlCode: ChildOfFieldset {}
extension HtmlDel: ChildOfFieldset {}
extension HtmlDetails: ChildOfFieldset {}
extension HtmlDfn: ChildOfFieldset {}
extension HtmlDiv: ChildOfFieldset {}
extension HtmlDl: ChildOfFieldset {}
extension HtmlEm: ChildOfFieldset {}
extension HtmlFieldset: ChildOfFieldset {}
extension HtmlFigure: ChildOfFieldset {}
extension HtmlFooter: ChildOfFieldset {}
extension HtmlForm: ChildOfFieldset {}
extension HtmlH1: ChildOfFieldset {}
extension HtmlH2: ChildOfFieldset {}
extension HtmlH3: ChildOfFieldset {}
extension HtmlH4: ChildOfFieldset {}
extension HtmlH5: ChildOfFieldset {}
extension HtmlH6: ChildOfFieldset {}
extension HtmlHeader: ChildOfFieldset {}
extension HtmlHr: ChildOfFieldset {}
extension HtmlI: ChildOfFieldset {}
extension HtmlIframe: ChildOfFieldset {}
extension HtmlImg: ChildOfFieldset {}
extension HtmlInput: ChildOfFieldset {}
extension HtmlIns: ChildOfFieldset {}
extension HtmlKbd: ChildOfFieldset {}
extension HtmlLabel: ChildOfFieldset {}
extension HtmlMain: ChildOfFieldset {}
extension HtmlMap: ChildOfFieldset {}
extension HtmlMark: ChildOfFieldset {}
extension HtmlMeter: ChildOfFieldset {}
extension HtmlNav: ChildOfFieldset {}
extension HtmlNoscript: ChildOfFieldset {}
extension HtmlObject: ChildOfFieldset {}
extension HtmlOl: ChildOfFieldset {}
extension HtmlOptgroup: ChildOfFieldset {}
extension HtmlOutput: ChildOfFieldset {}
extension HtmlP: ChildOfFieldset {}
extension HtmlPicture: ChildOfFieldset {}
extension HtmlPre: ChildOfFieldset {}
extension HtmlProgress: ChildOfFieldset {}
extension HtmlQ: ChildOfFieldset {}
extension HtmlS: ChildOfFieldset {}
extension HtmlSamp: ChildOfFieldset {}
extension HtmlScript: ChildOfFieldset {}
extension HtmlSection: ChildOfFieldset {}
extension HtmlSelect: ChildOfFieldset {}
extension HtmlSmall: ChildOfFieldset {}
extension HtmlSpan: ChildOfFieldset {}
extension HtmlStrong: ChildOfFieldset {}
extension HtmlSub: ChildOfFieldset {}
extension HtmlSup: ChildOfFieldset {}
extension HtmlSvg: ChildOfFieldset {}
extension HtmlTable: ChildOfFieldset {}
extension HtmlTemplate: ChildOfFieldset {}
extension HtmlTextarea: ChildOfFieldset {}
extension HtmlTime: ChildOfFieldset {}
extension HtmlU: ChildOfFieldset {}
extension HtmlUl: ChildOfFieldset {}
extension HtmlVar: ChildOfFieldset {}
extension HtmlVideo: ChildOfFieldset {}

public protocol VariationOfLegend {}
extension HtmlLegend: VariationOfLegend {}

extension Either: VariationOfLegend where Left: VariationOfLegend, Right: VariationOfLegend {}
extension EmptyView: VariationOfLegend {}
extension AnyView: VariationOfLegend {}
extension Optional: VariationOfLegend where Wrapped: VariationOfLegend {}

/// ---------------------- ///

public protocol ChildOfFigure {}

extension HtmlPlaintext: ChildOfFigure {}
extension HtmlRawtext:  ChildOfFigure {}
extension HtmlComment: ChildOfFigure {}

extension Array: ChildOfFigure where Element: ChildOfFigure {}
extension Either: ChildOfFigure where Left: ChildOfFigure, Right: ChildOfFigure {}
extension EmptyView: ChildOfFigure {}
extension AnyView: ChildOfFigure {}
extension Optional: ChildOfFigure where Wrapped: ChildOfFigure {}

extension HtmlA: ChildOfFigure {}
extension HtmlAbbr: ChildOfFigure {}
extension HtmlAddress: ChildOfFigure {}
extension HtmlArticle: ChildOfFigure {}
extension HtmlAside: ChildOfFigure {}
extension HtmlAudio: ChildOfFigure {}
extension HtmlB: ChildOfFigure {}
extension HtmlBdi: ChildOfFigure {}
extension HtmlBdo: ChildOfFigure {}
extension HtmlBlockquote: ChildOfFigure {}
extension HtmlBr: ChildOfFigure {}
extension HtmlButton: ChildOfFigure {}
extension HtmlCanvas: ChildOfFigure {}
extension HtmlCite: ChildOfFigure {}
extension HtmlCode: ChildOfFigure {}
extension HtmlDel: ChildOfFigure {}
extension HtmlDetails: ChildOfFigure {}
extension HtmlDfn: ChildOfFigure {}
extension HtmlDiv: ChildOfFigure {}
extension HtmlDl: ChildOfFigure {}
extension HtmlEm: ChildOfFigure {}
extension HtmlFieldset: ChildOfFigure {}
extension HtmlFigure: ChildOfFigure {}
extension HtmlFooter: ChildOfFigure {}
extension HtmlForm: ChildOfFigure {}
extension HtmlH1: ChildOfFigure {}
extension HtmlH2: ChildOfFigure {}
extension HtmlH3: ChildOfFigure {}
extension HtmlH4: ChildOfFigure {}
extension HtmlH5: ChildOfFigure {}
extension HtmlH6: ChildOfFigure {}
extension HtmlHeader: ChildOfFigure {}
extension HtmlHr: ChildOfFigure {}
extension HtmlI: ChildOfFigure {}
extension HtmlIframe: ChildOfFigure {}
extension HtmlImg: ChildOfFigure {}
extension HtmlInput: ChildOfFigure {}
extension HtmlIns: ChildOfFigure {}
extension HtmlKbd: ChildOfFigure {}
extension HtmlLabel: ChildOfFigure {}
extension HtmlMain: ChildOfFigure {}
extension HtmlMap: ChildOfFigure {}
extension HtmlMark: ChildOfFigure {}
extension HtmlMeter: ChildOfFigure {}
extension HtmlNav: ChildOfFigure {}
extension HtmlNoscript: ChildOfFigure {}
extension HtmlObject: ChildOfFigure {}
extension HtmlOl: ChildOfFigure {}
extension HtmlOptgroup: ChildOfFigure {}
extension HtmlOutput: ChildOfFigure {}
extension HtmlP: ChildOfFigure {}
extension HtmlPicture: ChildOfFigure {}
extension HtmlPre: ChildOfFigure {}
extension HtmlProgress: ChildOfFigure {}
extension HtmlQ: ChildOfFigure {}
extension HtmlS: ChildOfFigure {}
extension HtmlSamp: ChildOfFigure {}
extension HtmlScript: ChildOfFigure {}
extension HtmlSection: ChildOfFigure {}
extension HtmlSelect: ChildOfFigure {}
extension HtmlSmall: ChildOfFigure {}
extension HtmlSpan: ChildOfFigure {}
extension HtmlStrong: ChildOfFigure {}
extension HtmlSub: ChildOfFigure {}
extension HtmlSup: ChildOfFigure {}
extension HtmlSvg: ChildOfFigure {}
extension HtmlTable: ChildOfFigure {}
extension HtmlTemplate: ChildOfFigure {}
extension HtmlTextarea: ChildOfFigure {}
extension HtmlTime: ChildOfFigure {}
extension HtmlU: ChildOfFigure {}
extension HtmlUl: ChildOfFigure {}
extension HtmlVar: ChildOfFigure {}
extension HtmlVideo: ChildOfFigure {}

public protocol VariationOfFigcaption {}
extension HtmlFigcaption: VariationOfFigcaption {}

extension Either: VariationOfFigcaption where Left: VariationOfFigcaption, Right: VariationOfFigcaption {}
extension EmptyView: VariationOfFigcaption {}
extension AnyView: VariationOfFigcaption {}
extension Optional: VariationOfFigcaption where Wrapped: VariationOfFigcaption {}

/// ---------------------- ///

public protocol ChildOfHead {}
extension HtmlBase: ChildOfHead {}
extension HtmlLink: ChildOfHead {}
extension HtmlMeta: ChildOfHead {}
extension HtmlStyle: ChildOfHead {}
extension HtmlTitle: ChildOfHead {}
extension HtmlComment: ChildOfHead {}

extension Array: ChildOfHead where Element: ChildOfHead {}
extension Either: ChildOfHead where Left: ChildOfHead, Right: ChildOfHead {}
extension EmptyView: ChildOfHead {}
extension AnyView: ChildOfHead {}
extension Optional: ChildOfHead where Wrapped: ChildOfHead {}

/// ---------------------- ///

/// FIXME: remove me
/// Special case of ChlidOfProtocol
/// Check out the `//public protocol ChildOfHtml {}
//extension HtmlHead: ChildOfHtml {}
//extension HtmlBody: ChildOfHtml {}

public protocol VariationOfHead {}
extension HtmlHead: VariationOfHead {}

public protocol VariationOfBody {}
extension HtmlBody: VariationOfBody {}

/// ---------------------- ///

public protocol ChildOfMap {}
extension HtmlArea: ChildOfMap {}
extension HtmlScript: ChildOfMap {}
extension HtmlNoscript: ChildOfMap {}
extension HtmlTemplate: ChildOfMap {}
extension HtmlComment: ChildOfMap {}

extension Array: ChildOfMap where Element: ChildOfMap {}
extension Either: ChildOfMap where Left: ChildOfMap, Right: ChildOfMap {}
extension EmptyView: ChildOfMap {}
extension AnyView: ChildOfMap {}
extension Optional: ChildOfMap where Wrapped: ChildOfMap {}

/// ---------------------- ///

public protocol ChildOfObject {}
extension HtmlParam: ChildOfObject {}
extension HtmlScript: ChildOfObject {}
extension HtmlNoscript: ChildOfObject {}
extension HtmlTemplate: ChildOfObject {}
extension HtmlComment: ChildOfObject {}

extension Array: ChildOfObject where Element: ChildOfObject {}
extension Either: ChildOfObject where Left: ChildOfObject, Right: ChildOfObject {}
extension EmptyView: ChildOfObject {}
extension AnyView: ChildOfObject {}
extension Optional: ChildOfObject where Wrapped: ChildOfObject {}

/// ---------------------- ///

public protocol ChildOfOl {}
extension HtmlLi: ChildOfOl {}
extension HtmlScript: ChildOfOl {}
extension HtmlNoscript: ChildOfOl {}
extension HtmlTemplate: ChildOfOl {}
extension HtmlComment: ChildOfOl {}

extension Array: ChildOfOl where Element: ChildOfOl {}
extension Either: ChildOfOl where Left: ChildOfOl, Right: ChildOfOl {}
extension EmptyView: ChildOfOl {}
extension AnyView: ChildOfOl {}
extension Optional: ChildOfOl where Wrapped: ChildOfOl {}

/// ---------------------- ///

public protocol ChildOfOptgroup {}
extension HtmlOption: ChildOfOptgroup {}
extension HtmlScript: ChildOfOptgroup {}
extension HtmlNoscript: ChildOfOptgroup {}
extension HtmlTemplate: ChildOfOptgroup {}
extension HtmlComment: ChildOfOptgroup {}

extension Array: ChildOfOptgroup where Element: ChildOfOptgroup {}
extension Either: ChildOfOptgroup where Left: ChildOfOptgroup, Right: ChildOfOptgroup {}
extension EmptyView: ChildOfOptgroup {}
extension AnyView: ChildOfOptgroup {}
extension Optional: ChildOfOptgroup where Wrapped: ChildOfOptgroup {}

/// ---------------------- ///

public protocol ChildOfPicture {}
extension HtmlSource: ChildOfPicture where Parent == IsPicture {}
extension HtmlScript: ChildOfPicture {}
extension HtmlNoscript: ChildOfPicture {}
extension HtmlTemplate: ChildOfPicture {}
extension HtmlComment: ChildOfPicture {}

extension Array: ChildOfPicture where Element: ChildOfPicture {}
extension Either: ChildOfPicture where Left: ChildOfPicture, Right: ChildOfPicture {}
extension EmptyView: ChildOfPicture {}
extension AnyView: ChildOfPicture {}
extension Optional: ChildOfPicture where Wrapped: ChildOfPicture {}

/// ---------------------- ///

public protocol ChildOfSelect {}
extension HtmlOption: ChildOfSelect {}
extension HtmlScript: ChildOfSelect {}
extension HtmlNoscript: ChildOfSelect {}
extension HtmlTemplate: ChildOfSelect {}
extension HtmlComment: ChildOfSelect {}

extension Array: ChildOfSelect where Element: ChildOfSelect {}
extension Either: ChildOfSelect where Left: ChildOfSelect, Right: ChildOfSelect {}
extension EmptyView: ChildOfSelect {}
extension AnyView: ChildOfSelect {}
extension Optional: ChildOfSelect where Wrapped: ChildOfSelect {}

/// ---------------------- ///

public protocol ChildOfTbody {}
extension HtmlTr: ChildOfTbody where Content: VariationOfTd {}
extension HtmlScript: ChildOfTbody {}
extension HtmlNoscript: ChildOfTbody {}
extension HtmlTemplate: ChildOfTbody {}
extension HtmlComment: ChildOfTbody {}

extension Array: ChildOfTbody where Element: ChildOfTbody {}
extension Either: ChildOfTbody where Left: ChildOfTbody, Right: ChildOfTbody {}
extension EmptyView: ChildOfTbody {}
extension AnyView: ChildOfTbody {}
extension Optional: ChildOfTbody where Wrapped: ChildOfTbody {}

/// ---------------------- ///

public protocol VariationOfTbody {}
extension HtmlTbody: VariationOfTbody {}

extension Array: VariationOfTbody where Element: VariationOfTbody {}
extension Either: VariationOfTbody where Left: VariationOfTbody, Right: VariationOfTbody {}
extension EmptyView: VariationOfTbody {}
extension AnyView: VariationOfTbody {}
extension Optional: VariationOfTbody where Wrapped: VariationOfTbody {}

/// ---------------------- ///

public protocol ChildOfTfoot {}
extension HtmlTr: ChildOfTfoot where Content: VariationOfTd {}
extension HtmlScript: ChildOfTfoot {}
extension HtmlNoscript: ChildOfTfoot {}
extension HtmlTemplate: ChildOfTfoot {}
extension HtmlComment: ChildOfTfoot {}

extension Either: ChildOfTfoot where Left: ChildOfTfoot, Right: ChildOfTfoot {}
extension EmptyView: ChildOfTfoot {}
extension AnyView: ChildOfTfoot {}
extension Optional: ChildOfTfoot where Wrapped: ChildOfTfoot {}

/// ---------------------- ///

public protocol VariationOfTfoot {}
extension HtmlTfoot: VariationOfTfoot {}

extension Either: VariationOfTfoot where Left: VariationOfTfoot, Right: VariationOfTfoot {}
extension EmptyView: VariationOfTfoot {}
extension AnyView: VariationOfTfoot {}
extension Optional: VariationOfTfoot where Wrapped: VariationOfTfoot {}

/// ---------------------- ///

public protocol ChildOfThead {}
extension HtmlTr: ChildOfThead where Content: VariationOfTh {}
extension HtmlScript: ChildOfThead {}
extension HtmlNoscript: ChildOfThead {}
extension HtmlTemplate: ChildOfThead {}
extension HtmlComment: ChildOfThead {}

extension Either: ChildOfThead where Left: ChildOfThead, Right: ChildOfThead {}
extension EmptyView: ChildOfThead {}
extension AnyView: ChildOfThead {}
extension Optional: ChildOfThead where Wrapped: ChildOfThead {}

/// ---------------------- ///

public protocol VariationOfThead {}
extension HtmlThead: VariationOfThead {}

extension Either: VariationOfThead where Left: VariationOfThead, Right: VariationOfThead {}
extension EmptyView: VariationOfThead {}
extension AnyView: VariationOfThead {}
extension Optional: VariationOfThead where Wrapped: VariationOfThead {}

/// ---------------------- ///

public protocol ChildOfTr {}
extension HtmlScript: ChildOfTr {}
extension HtmlNoscript: ChildOfTr {}
extension HtmlTemplate: ChildOfTr {}
extension HtmlComment: ChildOfTr {}

extension Array: ChildOfTr where Element: ChildOfTr {}
extension Either: ChildOfTr where Left: ChildOfTr, Right: ChildOfTr {}
extension EmptyView: ChildOfTr {}
extension AnyView: ChildOfTr {}
extension Optional: ChildOfTr where Wrapped: ChildOfTr {}

/// ---------------------- ///

public protocol VariationOfTh: ChildOfTr {}
extension HtmlTh: VariationOfTh {}

extension Array: VariationOfTh where Element: VariationOfTh {}
extension Either: VariationOfTh where Left: VariationOfTh, Right: VariationOfTh {}
extension EmptyView: VariationOfTh {}
extension AnyView: VariationOfTh {}
extension Optional: VariationOfTh where Wrapped: VariationOfTh {}

/// ---------------------- ///

public protocol VariationOfTd: ChildOfTr {}
extension HtmlTd: VariationOfTd {}

extension Array: VariationOfTd where Element: VariationOfTd {}
extension Either: VariationOfTd where Left: VariationOfTd, Right: VariationOfTd {}
extension EmptyView: VariationOfTd {}
extension AnyView: VariationOfTd {}
extension Optional: VariationOfTd where Wrapped: VariationOfTd {}

/// ---------------------- ///

public protocol ChildOfUl {}
extension HtmlLi: ChildOfUl {}
extension HtmlScript: ChildOfUl {}
extension HtmlNoscript: ChildOfUl {}
extension HtmlTemplate: ChildOfUl {}
extension HtmlComment: ChildOfUl {}

extension Array: ChildOfUl where Element: ChildOfUl {}
extension Either: ChildOfUl where Left: ChildOfUl, Right: ChildOfUl {}
extension EmptyView: ChildOfUl {}
extension AnyView: ChildOfUl {}
extension Optional: ChildOfUl where Wrapped: ChildOfUl {}

/// ---------------------- ///

public protocol IsVideo {}
extension HtmlVideo: IsVideo {}

public protocol ChildOfVideo {}
extension HtmlSource: ChildOfVideo where Parent: IsVideo {}
extension HtmlTrack: ChildOfVideo {}
extension HtmlScript: ChildOfVideo {}
extension HtmlNoscript: ChildOfVideo {}
extension HtmlTemplate: ChildOfVideo {}
extension HtmlComment: ChildOfVideo {}

extension Array: ChildOfVideo where Element: ChildOfVideo {}
extension Either: ChildOfVideo where Left: ChildOfVideo, Right: ChildOfVideo {}
extension EmptyView: ChildOfVideo {}
extension AnyView: ChildOfVideo {}
extension Optional: ChildOfVideo where Wrapped: ChildOfVideo {}
