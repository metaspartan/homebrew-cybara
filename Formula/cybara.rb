class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1301"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1301/cybara-v1.0.1301-darwin-arm64-cli"; sha256 "b6cb4877e8c0169c3d651e7be5c55c3746672d1dd20262e55a01d97da8c5a9af" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1301/cybara-v1.0.1301-darwin-x64-cli"; sha256 "85b32d4601cb848ccb24b31978c145832370d744fe461f3d1c89b8ca030f4d19" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1301/cybara-v1.0.1301-linux-arm64-cli"; sha256 "9460edd5c4e6c7c3920908ffbe412c0ccfbd0e1d2d9ea75640eba672450dee02" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1301/cybara-v1.0.1301-linux-x64-cli"; sha256 "eb556acde0f6581c04f451de5a1cb9636b8519f97ef9e5b640a263b6a5932cb9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
