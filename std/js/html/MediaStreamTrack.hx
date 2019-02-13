/*
 * Copyright (C)2005-2019 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

// This file is generated from mozilla\MediaStreamTrack.webidl. Do not edit!

package js.html;

/**
	The `MediaStreamTrack` interface represents a single media track within a stream; typically, these are audio or video tracks, but other track types may exist as well.

	Documentation [MediaStreamTrack](https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack) by [Mozilla Contributors](https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack$history), licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/).

	@see <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack>
**/
@:native("MediaStreamTrack")
extern class MediaStreamTrack extends EventTarget {
	
	/**
		Returns a `DOMString` set to `"audio"` if the track is an audio track and to `"video"`, if it is a video track. It doesn't change if the track is deassociated from its source.
	**/
	var kind(default,null) : String;
	
	/**
		Returns a `DOMString` containing a unique identifier (GUID) for the track; it is generated by the browser.
	**/
	var id(default,null) : String;
	
	/**
		Returns a `DOMString` containing a user agent-assigned label that identifies the track source, as in `"internal microphone"`. The string may be left empty and is empty as long as no source has been connected. When the track is deassociated from its source, the label is not changed.
	**/
	var label(default,null) : String;
	
	/**
		A Boolean whose value of `true` if the track is enabled, that is allowed to render the media source stream; or `false` if it is disabled, that is not rendering the media source stream but silence and blackness. If the track has been disconnected, this value can be changed but has no more effect.
		 Note: You can implement standard "mute" functionality by setting `enabled` to `false`. The `muted` property refers to a condition in which there's no media because of a technical issue.
		 
	**/
	var enabled : Bool;
	
	/**
		Returns a Boolean value indicating whether the track is unable to provide media data due to a technical issue.
		 Note: You can implement standard "mute" functionality by setting `enabled` to `false`, and unmute the media by setting it back to `true` again.
		 
	**/
	var muted(default,null) : Bool;
	
	/**
		An `EventHandler` containing the action to perform when an `mute` event is fired on the object, that is when the streaming is terminating.
	**/
	var onmute : haxe.Constraints.Function;
	
	/**
		An `EventHandler` containing the action to perform when an `unmute` event is fired on the object, that is when a  `MediaStreamTrack` object is removed from it.
	**/
	var onunmute : haxe.Constraints.Function;
	
	/**
		Returns an enumerated value giving the status of the track. This will be one of the following values:
		 
		  `"live"` which indicates that an input is connected and does its best-effort in providing real-time data. In that case, the output of data can be switched on or off using the `MediaStreamTrack.enabled` attribute.
		  `"ended"` which indicates that the input is not giving any more data and will never provide new data.
		 
		 
	**/
	var readyState(default,null) : MediaStreamTrackState;
	
	/**
		An `EventHandler` containing the action to perform when an `ended_(MediaStream)` event is fired on the object, that is when a  `MediaStreamTrack` object is removed from it.
	**/
	var onended : haxe.Constraints.Function;
	
	
	/**
		Returns a duplicate of the `MediaStreamTrack`.
	**/
	function clone() : MediaStreamTrack;
	
	/**
		Stops playing the source associated to the track, both the source and the track are deassociated. The track state is set to `ended`.
	**/
	function stop() : Void;
	
	/**
		Returns a `MediaTrackConstraints` object containing the currently set constraints for the track; the returned value matches the constraints last set using `MediaStreamTrack.applyConstraints`.
	**/
	function getConstraints() : MediaTrackConstraints;
	
	/**
		Returns a `MediaTrackSettings` object containing the current values of each of the `MediaStreamTrack`'s constrainable properties.
	**/
	function getSettings() : MediaTrackSettings;
	
	/**
		Lets the application specify the ideal and/or ranges of acceptable values for any number of the available constrainable properties of the `MediaStreamTrack`.
		@throws DOMError
	**/
	function applyConstraints( ?constraints : MediaTrackConstraints ) : Promise<Void>;
}