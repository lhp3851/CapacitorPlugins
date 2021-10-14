import { WebPlugin } from '@capacitor/core';

import type { CapacitorPluginsPlugin } from './definitions';

export class CapacitorPluginsWeb extends WebPlugin implements CapacitorPluginsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
