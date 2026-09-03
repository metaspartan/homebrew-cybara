class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2268"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2268/cybara-v1.0.2268-darwin-arm64-cli"; sha256 "288a2dff36045667516bbda707ab09a953a30a7503dc2e5e9d00c05edf4df952" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2268/cybara-v1.0.2268-darwin-x64-cli"; sha256 "35cc98f6b4ba437dd99faaadceb5a36b189bf20dbd01667e0d25208a4210ca54" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2268/cybara-v1.0.2268-linux-arm64-cli"; sha256 "ef04c4c02e48572374cebb91f0746c084d4b0a1f1bb7468c2b69a10cc8e3129f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2268/cybara-v1.0.2268-linux-x64-cli"; sha256 "96149c02a4ef80aa0c3d05b33118effef478bb2e9b1942f26be7a7bacaac3d7e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
