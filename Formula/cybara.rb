class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2026"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2026/cybara-v1.0.2026-darwin-arm64-cli"; sha256 "af500244d0f4c7cc14423072fba98c89ecf06fa727675150051c0c23083c218b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2026/cybara-v1.0.2026-darwin-x64-cli"; sha256 "5c1d718f547779785656650e7487a3cf9cd326bfe512f36b4bdc6251410b7be1" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2026/cybara-v1.0.2026-linux-arm64-cli"; sha256 "304cf49fa135dbdf50df81be6a1eb2eba2357be40576040f362b7eebc376decf" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2026/cybara-v1.0.2026-linux-x64-cli"; sha256 "b642a704c4c371f3eee2f9dffe43869f87e2f46cf0ce1083736972d8f43cf7da" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
