class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2264"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2264/cybara-v1.0.2264-darwin-arm64-cli"; sha256 "0669538c23de4e3cd5bab1dc1401558a29c32bfddc4ee3f727e252525fcf2b15" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2264/cybara-v1.0.2264-darwin-x64-cli"; sha256 "9624b7a93aee0a4c06cbc975c78afa82a26dd9b73befd35684eb1fea72bbde41" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2264/cybara-v1.0.2264-linux-arm64-cli"; sha256 "73763d73052ba14b7c1f5b34e5da1a4d7014e88e49874b340efdd17368c9a606" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2264/cybara-v1.0.2264-linux-x64-cli"; sha256 "9397dd7c30ff15f81e13e85befe1cced68f4ea4d0994224267c079bfed989fda" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
