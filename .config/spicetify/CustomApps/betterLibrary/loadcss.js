(function loadcss() {
    document.getElementsByTagName('head')[0].insertAdjacentHTML(
        'beforeend',
        // '<link rel="stylesheet" href="spicetify-routes-betterlibrary.css" />');
        // the line above is not working. directly add css instead
        '<style>.Root__top-container:has(.betterLibBox) .LayoutResizer__resize-bar{visibility:hidden}.betterLibText{display:none;justify-content:center;align-items:center;height:100%}.main-yourLibraryX-library .betterLibText{display:flex}.Button-sc-1dqy6lx-0.Button-md-24-buttonTertiary-iconLeading-condensed-useBrowserDefaultFocusStyle.main-yourLibraryX-collapseButtonWrapper.main-yourLibraryX-button.main-useDropTarget-base,.Button-sc-1dqy6lx-0.Button-md-24-buttonTertiary-iconLeading-condensed-useBrowserDefaultFocusStyle.main-yourLibraryX-collapseButtonWrapper.main-yourLibraryX-button.main-useDropTarget-base.main-useDropTarget-track.main-useDropTarget-album.main-useDropTarget-artist.main-useDropTarget-playlistV2.main-useDropTarget-show.main-useDropTarget-episode{pointer-events:none;font-size:x-large;color:#fff}.main-yourLibraryX-library .main-yourLibraryX-header{display:none}.main-yourLibraryX-library .main-yourLibraryX-header:has(.WYU7SXdABSulyirnmIYb){display:flex}.IconWrapper__Wrapper-sc-16usrgb-0.Wrapper-md-leading{display:none} .Button-sc-1dqy6lx-0.Button-md-24-buttonTertiary-iconOnly-condensed-useBrowserDefaultFocusStyle.main-yourLibraryX-collapseButtonWrapper.main-yourLibraryX-button.main-useDropTarget-base{display:none}button.Button-sc-1dqy6lx-0.Button-sm-16-buttonTertiary-iconOnly-useBrowserDefaultFocusStyle.main-yourLibraryX-button.main-yourLibraryX-iconOnly.main-useDropTarget-base{display:none}button.Button-sc-1dqy6lx-0.Button-sm-16-buttonTertiary-iconOnly-useBrowserDefaultFocusStyle.main-yourLibraryX-createButton.main-yourLibraryX-button.main-yourLibraryX-iconOnly.main-useDropTarget-base.main-useDropTarget-track.main-useDropTarget-album.main-useDropTarget-playlistV2{display:inherit}span button.Button-sc-1dqy6lx-0.Button-sm-16-buttonTertiary-iconOnly-useBrowserDefaultFocusStyle.main-yourLibraryX-button.main-yourLibraryX-iconOnly.main-useDropTarget-base{display:inherit}.main-yourLibraryX-library{padding-top:5px}</style>');
    // disable after window is closed to prevent an expanded sidebar on opening
    window.addEventListener(
        'beforeunload',
        (event) => {
            disableBetterLib();
        }
        )
})();