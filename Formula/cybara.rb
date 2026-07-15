class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1614"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1614/cybara-v1.0.1614-darwin-arm64-cli"; sha256 "c3da413d970b650ea4c27dfd7d99ef1887b361eab36f60e9b345089ea4011be0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1614/cybara-v1.0.1614-darwin-x64-cli"; sha256 "279f734646dc3ff293825d1e28786423e5993e683f16179b1a870f357ec361ae" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1614/cybara-v1.0.1614-linux-arm64-cli"; sha256 "38f6e41d88b11dc9f66eab6e75eb649740d2a0af7dde4d21e109cede35a8fe2c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1614/cybara-v1.0.1614-linux-x64-cli"; sha256 "28aa71da573e13a7fecb3fc7bbb0437b7d1ef06673b8e98298f77cb5f64c7361" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
