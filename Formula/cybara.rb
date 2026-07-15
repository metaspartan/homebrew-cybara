class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1576"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1576/cybara-v1.0.1576-darwin-arm64-cli"; sha256 "77fb8e147830c8f0a760aa9b4303746f83406150bff44e8c2a336995157b0899" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1576/cybara-v1.0.1576-darwin-x64-cli"; sha256 "389a1f2a504489dc3df3fee2ae2ef61804885805b9577ab56f3605056a189fe5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1576/cybara-v1.0.1576-linux-arm64-cli"; sha256 "17ba3d50f720775bffaafdc8ea783a931f226d034202651fa9647b7e4c91eb93" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1576/cybara-v1.0.1576-linux-x64-cli"; sha256 "af04417c16b98cf29dfc226498f7b882951f400ca7099fdbd37fa6c219177b9a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
