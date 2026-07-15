class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1578"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1578/cybara-v1.0.1578-darwin-arm64-cli"; sha256 "e2a26ddabf11971585de8870b75a4b818524a5423a1c841bf9f2bfb51758bb2b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1578/cybara-v1.0.1578-darwin-x64-cli"; sha256 "69ab6ffbcfb34817d9add7a8f32bc987f7e8fbbab4f17748d2eb3518c95fdd68" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1578/cybara-v1.0.1578-linux-arm64-cli"; sha256 "94d087de92ad0f18dcb80cd936e27a58b45f791fe132efd97120a3073e872903" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1578/cybara-v1.0.1578-linux-x64-cli"; sha256 "2d237061f07be456278eed47c8a23530dc38fb443b03238d5c15f5e8a1961487" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
