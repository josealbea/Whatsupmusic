(function(e, t, n) {
  "use strict";
  t.infinitescroll = function(n, r, i) {
    this.element = t(i);
    if (!this._create(n, r)) {
      this.failed = true
    }
  };
  t.infinitescroll.defaults = {
    loading: {
      finished: n,
      finishedMsg: "<em>Congratulations, you've reached the end of the internet.</em>",
      img: "data:image/gif;base64,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",
      msg: null,
      msgText: "<em>Loading the next set of posts...</em>",
      selector: null,
      speed: "fast",
      start: n
    },
    state: {
      isDuringAjax: false,
      isInvalidPage: false,
      isDestroyed: false,
      isDone: false,
      isPaused: false,
      isBeyondMaxPage: false,
      currPage: 1
    },
    debug: false,
    behavior: n,
    binder: t(e),
    nextSelector: "div.navigation a:first",
    navSelector: "div.navigation",
    contentSelector: null,
    extraScrollPx: 150,
    itemSelector: "div.post",
    animate: false,
    pathParse: n,
    dataType: "html",
    appendCallback: true,
    bufferPx: 40,
    errorCallback: function() {},
    infid: 0,
    pixelsFromNavToBottom: n,
    path: n,
    prefill: false,
    maxPage: n
  };
  t.infinitescroll.prototype = {
    _binding: function(t) {
      var r = this,
        i = r.options;
      i.v = "2.0b2.120520";
      if ( !! i.behavior && this["_binding_" + i.behavior] !== n) {
        this["_binding_" + i.behavior].call(this);
        return
      }
      if (t !== "bind" && t !== "unbind") {
        this._debug("Binding value  " + t + " not valid");
        return false
      }
      if (t === "unbind") {
        this.options.binder.unbind("smartscroll.infscr." + r.options.infid)
      } else {
        this.options.binder[t]("smartscroll.infscr." + r.options.infid, function() {
          r.scroll()
        })
      }
      this._debug("Binding", t)
    },
    _create: function(i, s) {
      var o = t.extend(true, {}, t.infinitescroll.defaults, i);
      this.options = o;
      var u = t(e);
      var a = this;
      if (!a._validate(i)) {
        return false
      }
      var f = t(o.nextSelector).attr("href");
      if (!f) {
        this._debug("Navigation selector not found");
        return false
      }
      o.path = o.path || this._determinepath(f);
      o.contentSelector = o.contentSelector || this.element;
      o.loading.selector = o.loading.selector || o.contentSelector;
      o.loading.msg = o.loading.msg || t('<div id="infscr-loading"><img alt="Loading..." src="' + o.loading.img + '" /><div>' + o.loading.msgText + "</div></div>");
      (new Image).src = o.loading.img;
      if (o.pixelsFromNavToBottom === n) {
        o.pixelsFromNavToBottom = t(document).height() - t(o.navSelector).offset().top;
        this._debug("pixelsFromNavToBottom: " + o.pixelsFromNavToBottom)
      }
      var l = this;
      o.loading.start = o.loading.start ||
      function() {
        t(o.navSelector).hide();
        o.loading.msg.appendTo(o.loading.selector).show(o.loading.speed, t.proxy(function() {
          this.beginAjax(o)
        }, l))
      };
      o.loading.finished = o.loading.finished ||
      function() {
        if (!o.state.isBeyondMaxPage) o.loading.msg.fadeOut(o.loading.speed)
      };
      o.callback = function(e, r, i) {
        if ( !! o.behavior && e["_callback_" + o.behavior] !== n) {
          e["_callback_" + o.behavior].call(t(o.contentSelector)[0], r, i)
        }
        if (s) {
          s.call(t(o.contentSelector)[0], r, o, i)
        }
        if (o.prefill) {
          u.bind("resize.infinite-scroll", e._prefill)
        }
      };
      if (i.debug) {
        if (Function.prototype.bind && (typeof console === "object" || typeof console === "function") && typeof console.log === "object") {
          ["log", "info", "warn", "error", "assert", "dir", "clear", "profile", "profileEnd"].forEach(function(e) {
            console[e] = this.call(console[e], console)
          }, Function.prototype.bind)
        }
      }
      this._setup();
      if (o.prefill) {
        this._prefill()
      }
      return true
    },
    _prefill: function() {
      function s() {
        return r.options.contentSelector.height() <= i.height()
      }
      var r = this;
      var i = t(e);
      this._prefill = function() {
        if (s()) {
          r.scroll()
        }
        i.bind("resize.infinite-scroll", function() {
          if (s()) {
            i.unbind("resize.infinite-scroll");
            r.scroll()
          }
        })
      };
      this._prefill()
    },
    _debug: function() {
      if (true !== this.options.debug) {
        return
      }
      if (typeof console !== "undefined" && typeof console.log === "function") {
        if (Array.prototype.slice.call(arguments).length === 1 && typeof Array.prototype.slice.call(arguments)[0] === "string") {
          console.log(Array.prototype.slice.call(arguments).toString())
        } else {
          console.log(Array.prototype.slice.call(arguments))
        }
      } else if (!Function.prototype.bind && typeof console !== "undefined" && typeof console.log === "object") {
        Function.prototype.call.call(console.log, console, Array.prototype.slice.call(arguments))
      }
    },
    _determinepath: function(t) {
      var r = this.options;
      if ( !! r.behavior && this["_determinepath_" + r.behavior] !== n) {
        return this["_determinepath_" + r.behavior].call(this, t)
      }
      if ( !! r.pathParse) {
        this._debug("pathParse manual");
        return r.pathParse(t, this.options.state.currPage + 1)
      } else if (t.match(/^(.*?)\b2\b(.*?$)/)) {
        t = t.match(/^(.*?)\b2\b(.*?$)/).slice(1)
      } else if (t.match(/^(.*?)2(.*?$)/)) {
        if (t.match(/^(.*?page=)2(\/.*|$)/)) {
          t = t.match(/^(.*?page=)2(\/.*|$)/).slice(1);
          return t
        }
        t = t.match(/^(.*?)2(.*?$)/).slice(1)
      } else {
        if (t.match(/^(.*?page=)1(\/.*|$)/)) {
          t = t.match(/^(.*?page=)1(\/.*|$)/).slice(1);
          return t
        } else {
          this._debug("Sorry, we couldn't parse your Next (Previous Posts) URL. Verify your the css selector points to the correct A tag. If you still get this error: yell, scream, and kindly ask for help at infinite-scroll.com.");
          r.state.isInvalidPage = true
        }
      }
      this._debug("determinePath", t);
      return t
    },
    _error: function(t) {
      var r = this.options;
      if ( !! r.behavior && this["_error_" + r.behavior] !== n) {
        this["_error_" + r.behavior].call(this, t);
        return
      }
      if (t !== "destroy" && t !== "end") {
        t = "unknown"
      }
      this._debug("Error", t);
      if (t === "end" || r.state.isBeyondMaxPage) {
        this._showdonemsg()
      }
      r.state.isDone = true;
      r.state.currPage = 1;
      r.state.isPaused = false;
      r.state.isBeyondMaxPage = false;
      this._binding("unbind")
    },
    _loadcallback: function(i, s, o) {
      var u = this.options,
        a = this.options.callback,
        f = u.state.isDone ? "done" : !u.appendCallback ? "no-append" : "append",
        l;
      if ( !! u.behavior && this["_loadcallback_" + u.behavior] !== n) {
        this["_loadcallback_" + u.behavior].call(this, i, s);
        return
      }
      switch (f) {
      case "done":
        this._showdonemsg();
        return false;
      case "no-append":
        if (u.dataType === "html") {
          s = "<div>" + s + "</div>";
          s = t(s).find(u.itemSelector)
        }
        break;
      case "append":
        var c = i.children();
        if (c.length === 0) {
          return this._error("end")
        }
        l = document.createDocumentFragment();
        while (i[0].firstChild) {
          l.appendChild(i[0].firstChild)
        }
        this._debug("contentSelector", t(u.contentSelector)[0]);
        t(u.contentSelector)[0].appendChild(l);
        s = c.get();
        break
      }
      u.loading.finished.call(t(u.contentSelector)[0], u);
      if (u.animate) {
        var h = t(e).scrollTop() + t(u.loading.msg).height() + u.extraScrollPx + "px";
        t("html,body").animate({
          scrollTop: h
        }, 800, function() {
          u.state.isDuringAjax = false
        })
      }
      if (!u.animate) {
        u.state.isDuringAjax = false
      }
      a(this, s, o);
      if (u.prefill) {
        this._prefill()
      }
    },
    _nearbottom: function() {
      var i = this.options,
        s = 0 + t(document).height() - i.binder.scrollTop() - t(e).height();
      if ( !! i.behavior && this["_nearbottom_" + i.behavior] !== n) {
        return this["_nearbottom_" + i.behavior].call(this)
      }
      this._debug("math:", s, i.pixelsFromNavToBottom);
      return s - i.bufferPx < i.pixelsFromNavToBottom
    },
    _pausing: function(t) {
      var r = this.options;
      if ( !! r.behavior && this["_pausing_" + r.behavior] !== n) {
        this["_pausing_" + r.behavior].call(this, t);
        return
      }
      if (t !== "pause" && t !== "resume" && t !== null) {
        this._debug("Invalid argument. Toggling pause value instead")
      }
      t = t && (t === "pause" || t === "resume") ? t : "toggle";
      switch (t) {
      case "pause":
        r.state.isPaused = true;
        break;
      case "resume":
        r.state.isPaused = false;
        break;
      case "toggle":
        r.state.isPaused = !r.state.isPaused;
        break
      }
      this._debug("Paused", r.state.isPaused);
      return false
    },
    _setup: function() {
      var t = this.options;
      if ( !! t.behavior && this["_setup_" + t.behavior] !== n) {
        this["_setup_" + t.behavior].call(this);
        return
      }
      this._binding("bind");
      return false
    },
    _showdonemsg: function() {
      var r = this.options;
      if ( !! r.behavior && this["_showdonemsg_" + r.behavior] !== n) {
        this["_showdonemsg_" + r.behavior].call(this);
        return
      }
      r.loading.msg.find("img").hide().parent().find("div").html(r.loading.finishedMsg).animate({
        opacity: 1
      }, 2e3, function() {
        t(this).parent().fadeOut(r.loading.speed)
      });
      r.errorCallback.call(t(r.contentSelector)[0], "done")
    },
    _validate: function(n) {
      for (var r in n) {
        if (r.indexOf && r.indexOf("Selector") > -1 && t(n[r]).length === 0) {
          this._debug("Your " + r + " found no elements.");
          return false
        }
      }
      return true
    },
    bind: function() {
      this._binding("bind")
    },
    destroy: function() {
      this.options.state.isDestroyed = true;
      this.options.loading.finished();
      return this._error("destroy")
    },
    pause: function() {
      this._pausing("pause")
    },
    resume: function() {
      this._pausing("resume")
    },
    beginAjax: function(r) {
      var i = this,
        s = r.path,
        o, u, a, f;
      r.state.currPage++;
      if (r.maxPage != n && r.state.currPage > r.maxPage) {
        r.state.isBeyondMaxPage = true;
        this.destroy();
        return
      }
      o = t(r.contentSelector).is("table, tbody") ? t("<tbody/>") : t("<div/>");
      u = typeof s === "function" ? s(r.state.currPage) : s.join(r.state.currPage);
      i._debug("heading into ajax", u);
      a = r.dataType === "html" || r.dataType === "json" ? r.dataType : "html+callback";
      if (r.appendCallback && r.dataType === "html") {
        a += "+callback"
      }
      switch (a) {
      case "html+callback":
        i._debug("Using HTML via .load() method");
        o.load(u + " " + r.itemSelector, n, function(t) {
          i._loadcallback(o, t, u)
        });
        break;
      case "html":
        i._debug("Using " + a.toUpperCase() + " via $.ajax() method");
        t.ajax({
          url: u,
          dataType: r.dataType,
          complete: function(t, n) {
            f = typeof t.isResolved !== "undefined" ? t.isResolved() : n === "success" || n === "notmodified";
            if (f) {
              i._loadcallback(o, t.responseText, u)
            } else {
              i._error("end")
            }
          }
        });
        break;
      case "json":
        i._debug("Using " + a.toUpperCase() + " via $.ajax() method");
        t.ajax({
          dataType: "json",
          type: "GET",
          url: u,
          success: function(e, t, s) {
            f = typeof s.isResolved !== "undefined" ? s.isResolved() : t === "success" || t === "notmodified";
            if (r.appendCallback) {
              if (r.template !== n) {
                var a = r.template(e);
                o.append(a);
                if (f) {
                  i._loadcallback(o, a)
                } else {
                  i._error("end")
                }
              } else {
                i._debug("template must be defined.");
                i._error("end")
              }
            } else {
              if (f) {
                i._loadcallback(o, e, u)
              } else {
                i._error("end")
              }
            }
          },
          error: function() {
            i._debug("JSON ajax request failed.");
            i._error("end")
          }
        });
        break
      }
    },
    retrieve: function(r) {
      r = r || null;
      var i = this,
        s = i.options;
      if ( !! s.behavior && this["retrieve_" + s.behavior] !== n) {
        this["retrieve_" + s.behavior].call(this, r);
        return
      }
      if (s.state.isDestroyed) {
        this._debug("Instance is destroyed");
        return false
      }
      s.state.isDuringAjax = true;
      s.loading.start.call(t(s.contentSelector)[0], s)
    },
    scroll: function() {
      var t = this.options,
        r = t.state;
      if ( !! t.behavior && this["scroll_" + t.behavior] !== n) {
        this["scroll_" + t.behavior].call(this);
        return
      }
      if (r.isDuringAjax || r.isInvalidPage || r.isDone || r.isDestroyed || r.isPaused) {
        return
      }
      if (!this._nearbottom()) {
        return
      }
      this.retrieve()
    },
    toggle: function() {
      this._pausing()
    },
    unbind: function() {
      this._binding("unbind")
    },
    update: function(n) {
      if (t.isPlainObject(n)) {
        this.options = t.extend(true, this.options, n)
      }
    }
  };
  t.fn.infinitescroll = function(n, r) {
    var i = typeof n;
    switch (i) {
    case "string":
      var s = Array.prototype.slice.call(arguments, 1);
      this.each(function() {
        var e = t.data(this, "infinitescroll");
        if (!e) {
          return false
        }
        if (!t.isFunction(e[n]) || n.charAt(0) === "_") {
          return false
        }
        e[n].apply(e, s)
      });
      break;
    case "object":
      this.each(function() {
        var e = t.data(this, "infinitescroll");
        if (e) {
          e.update(n)
        } else {
          e = new t.infinitescroll(n, r, this);
          if (!e.failed) {
            t.data(this, "infinitescroll", e)
          }
        }
      });
      break
    }
    return this
  };
  var r = t.event,
    i;
  r.special.smartscroll = {
    setup: function() {
      t(this).bind("scroll", r.special.smartscroll.handler)
    },
    teardown: function() {
      t(this).unbind("scroll", r.special.smartscroll.handler)
    },
    handler: function(e, n) {
      var r = this,
        s = arguments;
      e.type = "smartscroll";
      if (i) {
        clearTimeout(i)
      }
      i = setTimeout(function() {
        t(r).trigger("smartscroll", s)
      }, n === "execAsap" ? 0 : 100)
    }
  };
  t.fn.smartscroll = function(e) {
    return e ? this.bind("smartscroll", e) : this.trigger("smartscroll", ["execAsap"])
  }
})(window, jQuery)