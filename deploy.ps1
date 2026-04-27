# BPKH MONI v3.1 - Final Deployment Script
# Update struktur akurat sesuai UU 34/2014

Write-Host "`n========== BPKH MONI v3.1 DEPLOYMENT ==========" -ForegroundColor Cyan
Write-Host ""

$expectedPath = "C:\bpkhsovereignaiexecutive\bpkh-public"
if ((Get-Location).Path -ne $expectedPath) {
    Write-Host "ERROR: Run this from $expectedPath" -ForegroundColor Red
    Write-Host "Run: cd $expectedPath" -ForegroundColor Yellow
    exit 1
}

Write-Host "[1/5] Backup existing v3.0 files..." -ForegroundColor Cyan
@("demo.html", "platform.html", "index.html", "README.md") | ForEach-Object {
    if (Test-Path $_) {
        $backup = "$_.v30.backup"
        Copy-Item $_ $backup -Force
        Write-Host "    Backed up $_ -> $backup" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "[2/5] Verify new v3.1 files..." -ForegroundColor Cyan
$required = @("index.html", "demo.html", "platform.html", "simple-demo.html", "README.md")
$missing = @()
foreach ($f in $required) {
    if (Test-Path $f) {
        $size = [math]::Round((Get-Item $f).Length / 1KB, 1)
        Write-Host "    [OK] $f ($size KB)" -ForegroundColor Green
    } else {
        Write-Host "    [MISSING] $f" -ForegroundColor Red
        $missing += $f
    }
}
if ($missing.Count -gt 0) { exit 1 }

Write-Host ""
Write-Host "[3/5] Git status..." -ForegroundColor Cyan
git status --short

Write-Host ""
Write-Host "[4/5] Commit changes..." -ForegroundColor Cyan
git add .
$commitMsg = @"
feat(v3.1): Update struktur organisasi sesuai UU 34/2014

Koreksi terminologi resmi BPKH (per bpkh.go.id/tentang-bpkh):
- Two-board system: Dewan Pengawas + Badan Pelaksana
- Komite Audit sebagai support body Dewas
- 'Kedeputian' replace 'Direktorat Investasi'
- 'Insan BPKH' untuk pegawai general
- Anggota Badan Pelaksana sebagai role baru

Roles updated (akurat 6):
- Anggota Dewan Pengawas (7) - Organ Pengawas
- Anggota Komite Audit (~5) - Support body Dewas
- Anggota Badan Pelaksana (7) - Organ Eksekutif
- Pegawai Kedeputian (~30) - Investasi/Operasional/Keuangan
- Auditor Internal SPI (~30)
- Insan BPKH general (~190)
"@

git commit -m $commitMsg

Write-Host ""
Write-Host "[5/5] Push to GitHub..." -ForegroundColor Cyan
git push origin main

Write-Host ""
Write-Host "========== DEPLOYMENT v3.1 COMPLETE ==========" -ForegroundColor Green
Write-Host ""
Write-Host "Wait 30-60 seconds for GitHub Pages + Cloudflare Workers." -ForegroundColor Yellow
Write-Host ""
Write-Host "Test URLs:" -ForegroundColor Cyan
Write-Host "  https://bpkh-moni.mshadianto.my.id/"
Write-Host "  https://bpkh-moni.mshadianto.my.id/platform.html"
Write-Host ""
