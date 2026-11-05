$ErrorActionPreference = 'Stop'
$assets = @{
  'hero-mockup.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/hero-mockup_hero-1790298941413.webp'
  'materiais-1.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/materiais-mat_1-1790298959959.webp'
  'materiais-2.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/materiais-mat_2-1790298963396.webp'
  'materiais-3.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/materiais-mat_3-1790298968512.webp'
  'materiais-4.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/materiais-mat_4-1790298974727.webp'
  'pacote-mockup.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/pacote-mockup_pacote-1790299042407.webp'
  'bonus-1.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/bonus-bonus_1_img-1790299084029.webp'
  'bonus-2.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/bonus-bonus_2_img-1790299101578.webp'
  'bonus-3.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/bonus-bonus_3_img-1790299113234.webp'
  'bonus-4.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/bonus-bonus_4_img-1790299123475.webp'
  'plano-basico.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/planos-basico_mockup-1790299202180.webp'
  'plano-completo.webp' = 'https://origin.mentoriaprocesso.com/img/f38b0890-f817-42b2-96f6-f941845ee3ed/ef41f0c8-ca99-417f-b1c0-44ee8fbb0287/planos-completo_mockup-1790299220015.webp'
  'laser.png' = 'https://site.mapasvisais.store/mvt/laser.png'
  'scale.png' = 'https://site.mapasvisais.store/mvt/scale.png'
  'manual-book.png' = 'https://site.mapasvisais.store/mvt/manual-book.png'
  'download.png' = 'https://site.mapasvisais.store/mvt/download.png'
  'folders-1.png' = 'https://site.mapasvisais.store/mvt/folders-1.png'
  'pagamentos.png' = 'https://site.mapasvisais.store/mvt/icons-meio-de-pagamento-e1738718378460-2-1.png'
  'garantia.png' = 'https://site.mapasvisais.store/mvt/garantia-15-dias-1.png'
  'order.png' = 'https://site.mapasvisais.store/mvt/order.png'
  'member-card.png' = 'https://site.mapasvisais.store/mvt/member-card.png'
  'digital-drawing.png' = 'https://site.mapasvisais.store/mvt/digital-drawing.png'
}
New-Item -ItemType Directory -Force -Path "$PSScriptRoot\assets" | Out-Null
foreach ($item in $assets.GetEnumerator()) {
  Invoke-WebRequest -UseBasicParsing -Uri $item.Value -OutFile (Join-Path "$PSScriptRoot\assets" $item.Key)
}
