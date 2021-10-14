import { registerPlugin } from '@capacitor/core';

import type { CapacitorPluginsPlugin } from './definitions';

const CapacitorPlugins = registerPlugin<CapacitorPluginsPlugin>('CapacitorPlugins', {
  web: () => import('./web').then(m => new m.CapacitorPluginsWeb()),
});

export * from './definitions';
export { CapacitorPlugins };
