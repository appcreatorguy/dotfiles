"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[367],{19565:(e,t,a)=>{a.d(t,{u:()=>L});var A=a(67294),l=a.n(A),r=a(94184),n=a.n(r),o=a(96685),E=a(76343),D=a(39561),c=a(62890);const s="FvfvGU3jvHRskUU9v9_8",i="Q9AlbZn2EGzy3MTWXa8X",T="mxmxS0y8LiwSs5nueKPT",d="GXxVAveNFStY3pBI_NO4",u="eHcXC2s97InYP7rMNT0H",L=l().memo((e=>{const{children:t,message:a,title:A,linkTitle:r,linkTo:L,onClick:C,renderInline:_=!1}=e,{isXSOnly:S,isSMOnly:O}=(0,D.e)(),m=S||O;return l().createElement("section",{className:n()(s,{[i]:_})},t,l().createElement(E.Dy.h1,{variant:m?o.LF.cello:o.LF.alto,className:d},A),l().createElement(E.Dy,{variant:m?o.LF.mesto:o.LF.ballad,className:u},a),r&&(L||C)&&l().createElement(c.z,{version:"secondary",className:T,linkTo:L,onClick:C},r))}))},61048:(e,t,a)=>{a.d(t,{K:()=>C});var A=a(67294),l=a.n(A),r=a(94184),n=a.n(r),o=a(86912),E=a(47130),D=a(79202),c=a(44794),s=a(44503),i=a(20657),T=a(64005),d=a(49023),u=a(22423);const L={filterInputContainer:"JzZyf6OGCGtdscOZGt8Y",expanded:"t6HIrX67Lp80Nj6tGauz",expandButton:"wCl7pMTEE68v1xuZeZiB",filterInput:"QZhV0hWVKlExlKr266jo",overlay:"uAJxc_psYWeimY8N9bH9",searchIconContainer:"_bjbHn5TABOW2s5LsEGX",searchIcon:"CIVozJ8XNPJ60uMN23Yg",clearButton:"EsqEJ_NPrHsPkTbX4FW8"},C=l().memo((({alwaysExpanded:e=!1,placeholder:t,filterBoxApiRef:a,outerRef:r,onFilter:C,onClear:_})=>{const S=(0,c.W6)(s.DW),{filter:O,setFilter:m}=(0,A.useContext)(u.fo),[I,N]=(0,A.useState)(e||!!O),[R,k]=(0,A.useState)(O),B=(0,A.useRef)(null),b=null!=r?r:B;(0,d.J4)(d.sN.FILTER);const M=(0,T.y)(((e,t=!1)=>{C&&!t&&C(e),m(e)}),200),y=(0,A.useCallback)((()=>{null==_||_(),k(""),M("",!0)}),[_,M]);(0,A.useImperativeHandle)(a,(()=>({clearFilter:y})));const p=(0,A.useCallback)((()=>{var e;N(!0),null===(e=b.current)||void 0===e||e.focus()}),[N,b]);(0,d.eY)(d.O4.FILTER,p);const P=(0,A.useCallback)((e=>{const t=e.currentTarget.value;k(t),M(t)}),[M,k]),h=(0,A.useCallback)((()=>{var e;null===(e=b.current)||void 0===e||e.focus(),y()}),[y,b]),v=(0,A.useCallback)((()=>{R||e||N(!1)}),[R,e,N]),f=(0,A.useCallback)((e=>{"Escape"===e.key&&R&&h()}),[R,h]),H=S?o.z:E.h;return l().createElement("div",{className:n()(L.filterInputContainer,{[L.expanded]:I}),role:"search"},l().createElement("input",{ref:b,className:n()(L.filterInput),role:"searchbox",maxLength:80,autoCorrect:"off",autoCapitalize:"off",spellCheck:!1,placeholder:t,onChange:P,onKeyDown:f,onBlur:v,value:R,"aria-hidden":!I,tabIndex:I?void 0:-1}),l().createElement("div",{className:L.overlay},l().createElement("span",{className:L.searchIconContainer},l().createElement(H,{iconSize:16,className:L.searchIcon,"aria-hidden":!0})),R&&l().createElement("button",{className:L.clearButton,onClick:h,"aria-label":i.ag.get("search.a11y.clear-input")},l().createElement(D.j,{iconSize:16,className:L.filterInputIcon}))),l().createElement("button",{className:L.expandButton,onClick:p,"data-testid":"expand-button","aria-hidden":I,tabIndex:I?-1:void 0},l().createElement(H,{iconSize:16,className:L.searchIcon})))}))},95289:(e,t,a)=>{a.d(t,{A:()=>m});var A=a(67294),l=a.n(A),r=a(94184),n=a.n(r),o=a(96685),E=a(26115),D=a(74594),c=a(20246),s=a(76343),i=a(62012),T=a(6577),d=a(30005),u=a(36652),L=a(21691),C=a(28248);const _=({heading:e,selected:t,onSelect:a,options:A,sortOrder:r})=>{let n;return r&&(r===C.kn.ASC||r===C.kn.SECONDARY_ASC?n=l().createElement(i.e,{iconSize:16}):r!==C.kn.DESC&&r!==C.kn.SECONDARY_DESC||(n=l().createElement(T.c,{iconSize:16}))),l().createElement(d.v,null,e?l().createElement(u.F,null,e):null,A.map((({key:e,value:A})=>l().createElement(L.s,{role:"menuitemradio","aria-checked":e===t.key&&!n,key:e,onClick:()=>a(e),icon:e===t.key&&n},l().createElement(s.Dy,{variant:o.LF.mesto},A)))))},S="w6j_vX6SF5IxSXrrkYw5",O="CbHJjxYxldG7uUPMYMaP";const m=({heading:e,options:t,selected:a,onSelect:A,isSelectionChanged:r,sortOrder:i,variant:T=o.LF.mesto,color:d})=>{const[u]=t;a||(a=u);const L=r?r(a):a!==u;return l().createElement(c.y,{menu:l().createElement(_,{selected:a,options:t,onSelect:A,sortOrder:i,heading:e})},((e,t,A)=>l().createElement("button",{className:n()(S,{[O]:L}),onClick:t,ref:A,type:"button"},l().createElement(s.Dy,{variant:T,color:d},a.value),e?l().createElement(E.q,{iconSize:16}):l().createElement(D.m,{iconSize:16}))))}},5292:(e,t,a)=>{a.d(t,{oT:()=>D,ei:()=>s,MY:()=>i,Ru:()=>T,Aq:()=>u,o$:()=>L,e3:()=>_,a6:()=>S,EY:()=>m,ZP:()=>I,G5:()=>R,$2:()=>k,sv:()=>b,_s:()=>M,w0:()=>y,pT:()=>P,WQ:()=>H,mE:()=>g});var A=a(20657),l=a(74483),r=a(9659),n=a(36132),o=a(28248),E=a(78462);let D;!function(e){e.SHOW_ALPHABETICAL="SHOW_ALPHABETICAL",e.BOOK_ALPHABETICAL="BOOK_ALPHABETICAL",e.EPISODE_ALPHABETICAL="EPISODE_ALPHABETICAL",e.PLAYLIST_ALPHABETICAL="PLAYLIST_ALPHABETICAL",e.ALBUM_ALPHABETICAL="ALBUM_ALPHABETICAL",e.ADDED_AT="ADDED_AT",e.CREATOR_NAME="CREATOR_NAME",e.CREATOR_NAME_ALPHABETICAL="CREATOR_NAME_ALPHABETICAL",e.ALBUM_CREATOR_NAME="ALBUM_CREATOR_NAME",e.RECENTLY_PLAYED="RECENTLY_PLAYED",e.MOST_RELEVANT="MOST_RELEVANT",e.CUSTOM_ORDER="CUSTOM_ORDER"}(D||(D={}));const c={[l.yW.NAME]:n.hI.TITLE,[l.yW.SHOW_NAME]:n.hI.SHOW,[l.yW.ADDED_AT]:n.hI.ADDED_AT},s={"show-alphabetical":D.SHOW_ALPHABETICAL,"book-alphabetical":D.BOOK_ALPHABETICAL,"episode-alphabetical":D.EPISODE_ALPHABETICAL,"playlist-alphabetical":D.PLAYLIST_ALPHABETICAL,"album-alphabetical":D.ALBUM_ALPHABETICAL,"recently-added":D.ADDED_AT,"creator-name":D.CREATOR_NAME,"creator-name-alphabetical":D.CREATOR_NAME_ALPHABETICAL,"album-creator-name":D.ALBUM_CREATOR_NAME,"recently-played":D.RECENTLY_PLAYED,"playlist-most-relevant":D.MOST_RELEVANT,"playlist-custom-order":D.CUSTOM_ORDER},i={[D.RECENTLY_PLAYED]:{key:"recently-played",value:A.ag.get("collection.sort.recently-played")},[D.ADDED_AT]:{key:"recently-added",value:A.ag.get("collection.sort.recently-added")},[D.SHOW_ALPHABETICAL]:{key:"show-alphabetical",value:A.ag.get("collection.sort.alphabetical")},[D.BOOK_ALPHABETICAL]:{key:"book-alphabetical",value:A.ag.get("collection.sort.alphabetical")},[D.EPISODE_ALPHABETICAL]:{key:"episode-alphabetical",value:A.ag.get("collection.sort.alphabetical")},[D.PLAYLIST_ALPHABETICAL]:{key:"playlist-alphabetical",value:A.ag.get("collection.sort.alphabetical")},[D.ALBUM_CREATOR_NAME]:{key:"album-creator-name",value:A.ag.get("collection.sort.creator")},[D.CREATOR_NAME]:{key:"creator-name",value:A.ag.get("collection.sort.creator")},[D.CREATOR_NAME_ALPHABETICAL]:{key:"creator-name-alphabetical",value:A.ag.get("collection.sort.alphabetical")},[D.ALBUM_ALPHABETICAL]:{key:"album-alphabetical",value:A.ag.get("collection.sort.alphabetical")},[D.MOST_RELEVANT]:{key:"playlist-most-relevant",value:A.ag.get("collection.sort.most-relevant")},[D.CUSTOM_ORDER]:{key:"playlist-custom-order",value:A.ag.get("collection.sort.custom-order")}},T=[D.ADDED_AT,D.ALBUM_ALPHABETICAL,D.CREATOR_NAME],d={[D.ADDED_AT]:{field:l.lY.ADDED_AT,order:l.As.DESC},[D.ALBUM_ALPHABETICAL]:{field:l.lY.NAME,order:l.As.ASC},[D.CREATOR_NAME]:{field:l.lY.ARTIST_NAME,order:l.As.ASC}},u=e=>{if(T.includes(e))return d[e]},L=[D.ADDED_AT,D.CREATOR_NAME_ALPHABETICAL],C={[D.ADDED_AT]:{field:l.hx.ADDED_AT,order:l.As.DESC},[D.CREATOR_NAME_ALPHABETICAL]:{field:l.hx.NAME,order:l.As.ASC}},_=e=>{if(L.includes(e))return C[e]},S=[D.ADDED_AT,D.SHOW_ALPHABETICAL],O={[D.ADDED_AT]:{field:l.hx.ADDED_AT,order:l.As.DESC},[D.SHOW_ALPHABETICAL]:{field:l.aW.NAME,order:l.As.ASC}},m=e=>{if(S.includes(e))return O[e]},I=[D.ADDED_AT,D.BOOK_ALPHABETICAL],N={[D.ADDED_AT]:l.VN.ADDED_AT,[D.BOOK_ALPHABETICAL]:l.VN.NAME},R=e=>{if(I.includes(e))return N[e]},k=[D.ADDED_AT,D.CREATOR_NAME,D.EPISODE_ALPHABETICAL],B={[D.ADDED_AT]:{field:l.yW.ADDED_AT,order:l.As.DESC},[D.CREATOR_NAME]:{field:l.yW.SHOW_NAME,order:l.As.ASC},[D.EPISODE_ALPHABETICAL]:{field:l.yW.NAME,order:l.As.ASC}},b=e=>{if(k.includes(e))return B[e]},M=e=>{if(!k.includes(e))return;const t=b(e);if(null==t||!t.field)return;const a=c[t.field];if(!a)return;return n.Vd[a].map((e=>t.order?`${e} ${t.order}`:e)).join(",")},y=[D.MOST_RELEVANT,D.RECENTLY_PLAYED,D.ADDED_AT,D.PLAYLIST_ALPHABETICAL,D.CUSTOM_ORDER],p={[D.ADDED_AT]:{field:r.bD.ADDED_AT,order:r.As.DESC},[D.RECENTLY_PLAYED]:{field:r.bD.RECENTLY_PLAYED,order:r.As.ASC},[D.PLAYLIST_ALPHABETICAL]:{field:r.bD.NAME,order:r.As.ASC},[D.MOST_RELEVANT]:{field:r.bD.RELEVANCE,order:r.As.DESC},[D.CUSTOM_ORDER]:void 0},P=e=>{if(y.includes(e))return p[e]},h={"custom-order":E.I5,title:{column:o.QD.TITLE,order:o.kn.ASC},artist:{column:o.QD.TITLE,order:o.kn.SECONDARY_ASC},"added-by":{column:o.QD.ADDED_BY,order:o.kn.ASC},"added-at":{column:o.QD.ADDED_AT,order:o.kn.ASC},duration:{column:o.QD.DURATION,order:o.kn.ASC},album:{column:o.QD.ALBUM,order:o.kn.ASC},"album-or-podcast":{column:o.QD.ALBUM_OR_PODCAST,order:o.kn.ASC},"album-or-show":{column:o.QD.ALBUM_OR_SHOW,order:o.kn.ASC}},v={title:o.QD.TITLE,artist:o.QD.TITLE,"added-by":o.QD.ADDED_BY,"added-at":o.QD.ADDED_AT,duration:o.QD.DURATION,album:o.QD.ALBUM,"album-or-podcast":o.QD.ALBUM_OR_PODCAST,"album-or-show":o.QD.ALBUM_OR_SHOW},f={[o.kn.NONE]:o.kn.NONE,[o.kn.ASC]:o.kn.DESC,[o.kn.DESC]:o.kn.ASC,[o.kn.SECONDARY_ASC]:o.kn.SECONDARY_DESC,[o.kn.SECONDARY_DESC]:o.kn.SECONDARY_ASC},H=(e,t,a)=>e?t!==v[e]||"artist"===e&&[o.kn.ASC,o.kn.DESC].includes(a)||"title"===e&&[o.kn.SECONDARY_ASC,o.kn.SECONDARY_DESC].includes(a)?h[e]:{column:v[e],order:f[a]}:E.I5,g={[o.QD.INDEX]:{key:"custom-order",value:A.ag.get("sort.custom-order")},[o.QD.TITLE]:{key:"title",value:A.ag.get("sort.title")},[o.QD.ARTIST]:{key:"artist",value:A.ag.get("sort.artist")},[o.QD.ADDED_BY]:{key:"added-by",value:A.ag.get("sort.added-by")},[o.QD.ADDED_AT]:{key:"added-at",value:A.ag.get("sort.date-added")},[o.QD.DURATION]:{key:"duration",value:A.ag.get("sort.duration")},[o.QD.EVENT_DATE]:null,[o.QD.ALBUM]:{key:"album",value:A.ag.get("sort.album")},[o.QD.ALBUM_OR_PODCAST]:{key:"album-or-podcast",value:A.ag.get("sort.album-or-podcast")},[o.QD.ALBUM_OR_SHOW]:{key:"album-or-show",value:A.ag.get("sort.album-or-show")},[o.QD.PLAYS]:null,[o.QD.RELEASE_DATE]:null,[o.QD.ADD]:null,[o.QD.ACTIONS]:null}},78462:(e,t,a)=>{a.d(t,{P0:()=>E,MI:()=>D,RJ:()=>c,zq:()=>s,I5:()=>i,Gb:()=>T,kz:()=>d});var A=a(67294),l=a.n(A),r=a(22583),n=a(28248),o=a(73785);const E=[n.QD.INDEX,n.QD.TITLE,n.QD.ALBUM,n.QD.ADDED_AT],D=[n.QD.INDEX,n.QD.TITLE,n.QD.ALBUM,n.QD.DURATION],c=[n.QD.INDEX,n.QD.TITLE,n.QD.ALBUM,n.QD.DURATION],s=[n.QD.INDEX,n.QD.TITLE,n.QD.ALBUM,n.QD.ALBUM_OR_PODCAST,n.QD.ADDED_BY,n.QD.ADDED_AT,n.QD.DURATION],i={column:null,order:o.k.NONE},T=(0,A.createContext)({setSortState:()=>{throw new Error("setSortState must be used within a TracksSortProvider")},sortState:i}),d=l().memo((function({uri:e,children:t}){return l().createElement(r.r,{uri:e,defaultState:i,sortContext:T},t)}))}}]);
//# sourceMappingURL=367.js.map