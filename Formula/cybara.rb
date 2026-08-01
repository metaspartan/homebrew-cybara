class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2031"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2031/cybara-v1.0.2031-darwin-arm64-cli"; sha256 "dabf3066818c102541b2b20ebe60c2f45c3ff7eff89003fc31a55e3f5a94777d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2031/cybara-v1.0.2031-darwin-x64-cli"; sha256 "ca8b35fd2d9e7b6da18d232605e80905cc826b3d164392d6043b78fea3d91f5d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2031/cybara-v1.0.2031-linux-arm64-cli"; sha256 "93916a3c6b7d5faace9f5dc3bd0a2984e20ce3410f9e1d35dabfa8814987578a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2031/cybara-v1.0.2031-linux-x64-cli"; sha256 "bb2e0ca751e45c301086e7a1d685037b537471931935a7e262550ccc519416ee" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
