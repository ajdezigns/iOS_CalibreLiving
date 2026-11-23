import Shared
import SwiftUI

/// The Calibre Living wordmark, as laid out at the bottom of `LaunchScreen.storyboard`. Shared by the
/// launch splash overlay and the first stand-by screen of a cold launch so the branding stays put
/// across the splash → stand-by hand-off.
///
/// The storyboard keeps the upstream "A PROJECT FROM THE" caption hidden above the wordmark, so the
/// caption is kept here hidden too: it holds the same space and the wordmark sits at the same height.
struct OHFBrandingFooter: View {
    /// Mirrors the wordmark constraints in `LaunchScreen.storyboard`.
    static let logoSize = CGSize(width: 220, height: 25)
    /// Mirrors the storyboard's wordmark-bottom-to-safe-area constraint.
    static let bottomPadding: CGFloat = 32
    /// Mirrors the hidden caption above the wordmark in `LaunchScreen.storyboard`.
    private static let captionFontSize: CGFloat = 13

    var body: some View {
        VStack(spacing: 0) {
            Text(L10n.OhfBranding.caption)
                .font(.system(size: Self.captionFontSize, weight: .semibold))
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .hidden()
            Image(.calibreWordmark)
                .resizable()
                .scaledToFit()
                .frame(width: Self.logoSize.width, height: Self.logoSize.height)
        }
    }
}

#Preview {
    OHFBrandingFooter()
}
