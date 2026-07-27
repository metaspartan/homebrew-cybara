class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1960"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1960/cybara-v1.0.1960-darwin-arm64-cli"; sha256 "d591abac48f3613bd5978bbc083ba0274fb4d06212418f808c6f17e3b3adffa8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1960/cybara-v1.0.1960-darwin-x64-cli"; sha256 "94ae168eb84702bbfa055ac7dc169c1d84a5fb2fbd5602600be69b1512489e59" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1960/cybara-v1.0.1960-linux-arm64-cli"; sha256 "29a20892cad95899693e4d511e4d2917597833b98d9cd204375e17147c72dd12" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1960/cybara-v1.0.1960-linux-x64-cli"; sha256 "5407cc9026c4193d219979cf0a8f99776911e927320cfb3c666885c65b468a95" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
